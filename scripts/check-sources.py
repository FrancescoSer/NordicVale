#!/usr/bin/env python3
"""Check that the Nordic rules still match the Nordic TechDocs Style Guide.

Usage:
    scripts/check-sources.py --guide PATH [--write-coverage]

PATH is a checkout of https://github.com/NordicPlayground/techdocs-style-guide.

The script fails (exit code 1) when:

* the anchor of a rule's ``link:`` does not exist on the guide page, or the page
  does not exist;
* a ``# Source: <page>.md:<line>, "<quote>"`` comment no longer matches the
  guide, that is, the quote is not found near the cited line.

Anchors are read from ``site/<page>/index.html`` when the built site is
present. Otherwise they are computed from the Markdown headings the way
MkDocs does (the ``toc`` extension slugs and ``{#id}`` attributes).

With ``--write-coverage``, it also regenerates ``coverage/nordic-guide.yml``
from the ``link:`` and ``# Source:`` lines of every rule.
"""
import argparse
import glob
import html
import os
import re
import sys
import unicodedata

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BASE_URL = 'https://nordicplayground.github.io/techdocs-style-guide/'
# Lines of slack around a cited line, for small edits in the guide.
SLACK = 6

PAGE_RE = re.compile(r'\b((?:[\w-]+/)*[\w-]+\.md)\b')
SOURCE_RE = re.compile(
    r'(?P<page>(?:[\w-]+/)*[\w-]+\.md):(?P<start>\d+)(?:-(?P<end>\d+))?'
    r',\s*(?:[\w ]+:\s*)?"(?P<quote>[^\n]*)')


def slugify(value):
    """The default slugify of Python-Markdown's toc extension."""
    value = unicodedata.normalize('NFKD', value).encode('ascii', 'ignore').decode('ascii')
    value = re.sub(r'[^\w\s-]', '', value).strip().lower()
    return re.sub(r'[-\s]+', '-', value)


def heading_text(raw):
    text = re.sub(r'\s*\{[^}]*\}\s*$', '', raw)
    text = re.sub(r'!?\[([^\]]*)\]\([^)]*\)', r'\1', text)
    text = re.sub(r'<[^>]+>', '', text)
    text = text.replace('`', '').replace('*', '')
    return html.unescape(text).strip()


def anchors_from_markdown(path):
    ids, seen = set(), {}
    in_fence = False
    for line in open(path, encoding='utf-8'):
        if re.match(r'^\s*(```|~~~)', line):
            in_fence = not in_fence
            continue
        if in_fence:
            continue
        m = re.match(r'^(#{1,6})\s+(.*?)\s*#*\s*$', line)
        if not m:
            continue
        explicit = re.search(r'\{[^}]*#([\w-]+)[^}]*\}\s*$', m.group(2))
        if explicit:
            ids.add(explicit.group(1))
            continue
        slug = slugify(heading_text(m.group(2)))
        if slug in seen:
            seen[slug] += 1
            slug = f'{slug}_{seen[slug]}'
        else:
            seen[slug] = 0
        ids.add(slug)
    return ids


def anchors_for(guide, page):
    """Return (exists, anchors) for a page path such as 'writing-tips/' or 'numbers/'."""
    page = page.strip('/')
    parts = [guide, 'site'] + ([page] if page else []) + ['index.html']
    built = os.path.join(*parts)
    if os.path.exists(built):
        text = open(built, encoding='utf-8').read()
        return True, set(re.findall(r'\bid="([^"]+)"', text))
    candidates = (f'{page}.md', f'{page}/index.md', f'{page}/README.md') if page else ('index.md', 'README.md')
    for candidate in candidates:
        md = os.path.join(guide, 'docs', candidate)
        if os.path.exists(md):
            return True, anchors_from_markdown(md)
    return False, set()


def normalize(text):
    text = text.replace('’', "'").replace('‘', "'").replace('“', '"').replace('”', '"')
    text = re.sub(r'!?\[([^\]]*)\]\([^)]*\)', r'\1', text)
    text = re.sub(r'<[^>]+>', ' ', text)
    # Markup, quotation marks, and commas often differ between a quote and the page.
    text = re.sub(r'[*`_\\|"\',]', '', text)
    text = re.sub(r'\s+', ' ', text)
    return text.strip().lower()


def quote_fragments(quote):
    # The quote ends at the last quotation mark on the line. Quotes can
    # contain quotation marks, so do not stop at the first one.
    if '"' in quote:
        quote = quote[:quote.rfind('"')]
    quote = re.sub(r'!?\[([^\]]*)\]\([^)]*\)', r'\1', quote)
    parts = re.split(r'\.\.\.|…|\(|\)|"', quote)
    return [p.strip(' ,.:;') for p in parts if len(p.strip(' ,.:;')) >= 12]


def page_paths(guide, page):
    """Return the docs paths a link page such as 'writing-tips/' can come from."""
    page = page.strip('/')
    if not page:
        return ['index.md', 'README.md']
    return [f'{page}.md', f'{page}/index.md']


def check(guide):
    errors = []
    docs = os.path.join(guide, 'docs')
    coverage = {os.path.relpath(p, docs): set()
                for p in glob.glob(os.path.join(docs, '**', '*.md'), recursive=True)}
    for rule_file in sorted(glob.glob(os.path.join(ROOT, 'Nordic', '*.yml'))):
        rule = os.path.splitext(os.path.basename(rule_file))[0]
        text = open(rule_file, encoding='utf-8').read()
        rel = os.path.relpath(rule_file, ROOT)

        m = re.search(r'^link:\s*(\S+)', text, re.M)
        if not m:
            errors.append(f'{rel}: no link')
        elif not m.group(1).startswith(BASE_URL):
            errors.append(f'{rel}: link does not point to the Nordic guide: {m.group(1)}')
        else:
            page, _, anchor = m.group(1)[len(BASE_URL):].partition('#')
            exists, ids = anchors_for(guide, page)
            if not exists:
                errors.append(f'{rel}: link page not found: {page}')
            elif anchor and anchor not in ids:
                errors.append(f'{rel}: link anchor not found: {page}#{anchor}')
            for candidate in page_paths(guide, page):
                if candidate in coverage:
                    coverage[candidate].add(rule)

        in_source = False
        for line in text.splitlines():
            stripped = line.strip()
            if not stripped.startswith('#'):
                in_source = False
                continue
            if 'source: MSWSG' in line:
                in_source = False
                continue
            if re.match(r'#\s*Source:', stripped):
                in_source = True
            if in_source:
                for pm in PAGE_RE.finditer(line):
                    if pm.group(1) in coverage:
                        coverage[pm.group(1)].add(rule)
            if not in_source:
                continue
            for sm in SOURCE_RE.finditer(line):
                path = os.path.join(docs, sm.group('page'))
                if not os.path.exists(path):
                    errors.append(f'{rel}: source page not found: {sm.group("page")}')
                    continue
                lines = open(path, encoding='utf-8').read().split('\n')
                start = int(sm.group('start'))
                end = int(sm.group('end') or start)
                if start > len(lines):
                    errors.append(f'{rel}: {sm.group("page")}:{start} is past the end of the page')
                    continue
                window = normalize(' '.join(lines[max(0, start - 1 - SLACK):end + SLACK]))
                # Only the text up to the next page reference belongs to this quote.
                quote = PAGE_RE.split(sm.group('quote'))[0]
                frags = quote_fragments(quote)
                if frags and not any(normalize(f) in window for f in frags):
                    errors.append(f'{rel}: quote not found at {sm.group("page")}:{start}: "{frags[0]}"')
    return errors, coverage


def write_coverage(coverage):
    out = ['# Coverage of the Nordic TechDocs Style Guide by the Nordic Vale rules.',
           '# Generated by scripts/check-sources.py --write-coverage from the `link:` and',
           '# `# Source:` lines in Nordic/*.yml.',
           '# Key: guide page (docs/<path>.md). Value: rules that enforce part of it, or [] if none.',
           '']
    for page in sorted(coverage):
        out.append(f'{page}: [{", ".join(sorted(coverage[page]))}]')
    with open(os.path.join(ROOT, 'coverage', 'nordic-guide.yml'), 'w', encoding='utf-8') as f:
        f.write('\n'.join(out) + '\n')


def main():
    parser = argparse.ArgumentParser(description=__doc__.split('\n')[0])
    parser.add_argument('--guide', required=True, help='Path to a checkout of the style guide')
    parser.add_argument('--write-coverage', action='store_true',
                        help='Regenerate coverage/nordic-guide.yml')
    args = parser.parse_args()
    errors, coverage = check(args.guide)
    if args.write_coverage:
        write_coverage(coverage)
    for e in errors:
        print(e)
    print(f'{len(errors)} problem(s) found.' if errors else 'All links and sources match the guide.')
    sys.exit(1 if errors else 0)


if __name__ == '__main__':
    main()
