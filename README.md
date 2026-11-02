# NordicVale

> **NOTE**: This project is neither maintained nor endorsed by Microsoft.

This repository is a [Vale](https://github.com/errata-ai/vale) style that implements the [Nordic TechDocs Style Guide](https://nordicplayground.github.io/techdocs-style-guide/) ([source](https://github.com/NordicPlayground/techdocs-style-guide)). It started as a [fork](https://github.com/FrancescoSer/NordicVale) of the Vale implementation of the [*Microsoft Writing Style Guide*](https://learn.microsoft.com/en-us/style-guide/welcome/), which the Nordic guide was itself forked from.

Every rule in `Nordic/` links to the page of the Nordic guide it enforces. Rules lint both Markdown (`.md`) and reStructuredText (`.rst`) files. Linting `.rst` requires `docutils` (see Step 4).

# Best Way to Install Vale Without Causing Conflicts with nRF Connect SDK Requirements

## Step 1: Create a Folder for the Virtual Environment
Create a folder to contain the Virtual Environment.

## Step 2: Create a Python Virtual Environment
Run the following command to create a Virtual Environment in the folder:

```bash
python -m venv NewVenvName
```

## Step 3: Activate the Virtual Environment
- **On Windows:**
  ```bash
  NewVenvName\Scripts\activate
  ```
- **On Linux:**
  ```bash
  source NewVenvName/bin/activate
  ```

## Step 4: Install Vale and Docutils
Install `vale` and `docutils` inside the Virtual Environment:

```bash
pip install "vale>=3.25.1" docutils
```

The `vale` package on PyPI downloads the standalone Vale binary of the same version. The style needs Vale 3.25.1 or later, which CI tests. You can also download the standalone binary from the [Vale releases](https://github.com/errata-ai/vale/releases) page and put it on your `PATH`.

Do not use the snap build of Vale (`snap install vale`). It cannot run the `rst2html` from your virtual environment, so it cannot lint `.rst` files, and it can lag behind the current release.

## Step 5: Verify Installation
- **Check Vale:**
  ```bash
  vale --version
  ```
- **Confirm Docutils Installation:**
  ```bash
  rst2html.py --version
  ```
  or
  ```bash
  rst2html --version
  ```

## Step 6: Deactivate the Virtual Environment
To deactivate the Virtual Environment, run:

```bash
deactivate
```
or
```bash
exit
```

---

## Step 7: Clone the Repository
1. Create a folder for cloning the repository in a location of your choice.
2. Navigate to the folder and run:

   ```bash
   git clone https://github.com/FrancescoSer/NordicVale
   ```

---

## Step 8: Run Vale
1. Navigate to the Virtual Environment folder and activate the Virtual Environment:
   - **On Windows:**
     ```bash
     (Path_to_VE)\Scripts\activate
     ```
   - **On macOS/Linux:**
     ```bash
     source bin/activate
     ```

2. Run Vale inside the Virtual Environment as follows:
   - For a single file:
     ```bash
     vale --config=[PATH_TO_VALE_INI]/.vale.ini [PATH_TO_YOUR_DOC]/file.rst
     ```
   - For an entire folder:
     ```bash
     vale --config=[PATH_TO_VALE_INI]/.vale.ini [PATH_TO_YOUR_DOC]/docfolder/
     ```

   The command output will highlight errors, warnings, and suggestions in your documentation files, based on the current Vale configuration files.

---

## Step 9: Pipe Vale Output to a File
- **On Windows (PowerShell):**
  ```powershell
  vale --config=c:\git\nordicvale\.vale.ini C:\git\ncs\nrf\doc\nrf\path_to_file\file.rst | Tee-Object -FilePath valelastoutput.txt
  ```
- **On Linux:**
  ```bash
  vale --config=/path/to/.vale.ini /path/to/file.rst | tee /path/to/output_file.txt
  ```

---

## Notes
- The editing of configuration files is still a work in progress, so take the output with a grain of salt.
- Leave feedback in the comments about acronyms or errors misinterpreted by Vale.

---

## Step 10: Deactivate the Virtual Environment
To deactivate the Virtual Environment, run:

```bash
deactivate
```
or
```bash
exit
```

# Using the style in your project

Each release publishes the style as `Nordic.zip`. Add the release URL to your own `.vale.ini` and run `vale sync`, or point `StylesPath` at a clone of this repository:

```ini
StylesPath = styles
MinAlertLevel = suggestion

Packages = https://github.com/FrancescoSer/NordicVale/releases/latest/download/Nordic.zip

[*.{md,rst}]
BasedOnStyles = Nordic
```

The `.vale.ini` in this repository also has format-specific settings. Copy its `[*.md]`, `[*.rst]`, and `[sphinx]` sections into your configuration:

- `[*.md]` `TokenIgnores` skips `</br>`. It is not a valid HTML tag, so Vale drops it and joins the text on either side, and `Spacing` flags `bits.</br>It` as `bits.It`.
- `TokenIgnores` skips reStructuredText roles (such as `:ref:` and `:c:func:`), inline literals, `|substitutions|`, and the embedded targets of hyperlinks.
- `TokenIgnores` also skips `code-block` directives whose language contains `+` or `#`, such as `C++`. Vale 3.25.1 does not recognize these directives as code, so without this setting it lints their body as prose.
- `[sphinx]` `CodeDirectives` lists the nRF Connect SDK directives whose body is code or generated content, such as `msc` (message sequence charts) and `ncs-include`. Vale lints the body of any other directive that docutils does not know as prose. Add the directives your project uses.

To check that your configuration loads without warnings, run `vale ls-config`.

## Markdown and reStructuredText

- Vale renders `.rst` files with docutils (`rst2html`), so docutils must be installed in the environment that runs Vale. Without it, Vale cannot lint `.rst` files.
- docutils already removes literal blocks (`::`), `code`, `code-block`, and `parsed-literal` directives, comments, and inline literals before linting. It also drops the content of Sphinx-only directives, such as `toctree`, that it does not know.
- Markdown code spans and fenced code blocks are ignored by default.
- Heading levels differ between the two formats. docutils renders the title of an `.rst` page as a separate top-level heading and numbers the sections below it from the top level again, so an `.rst` heading renders one HTML level up from the same heading in Markdown: a fifth-level `.rst` heading is an `h4`. Vale scopes cannot differ by format, so `HeadingDepth` (scopes `h5` and `h6`) flags a fifth-level heading in Markdown, but only a sixth-level heading in reStructuredText.

## Rules

Each rule in `Nordic/` has a `link:` to the page of the [Nordic TechDocs Style Guide](https://nordicplayground.github.io/techdocs-style-guide/) it enforces, and a `# Source:` comment that quotes the guide. Entries that come only from the Microsoft Writing Style Guide, which the Nordic guide was forked from, have a `# source: MSWSG` comment.

`coverage/nordic-guide.yml` lists, for each page of the guide, the rules that enforce it.

Levels follow one convention:

- **error**: the guide prohibits something, or uses *must*.
- **warning**: the guide uses *avoid* or *should*.
- **suggestion**: a judgment call, or a heuristic that can be noisy.

To fail a CI job only on errors, run `vale --minAlertLevel=error`.

Some rules come in pairs:

- `Contractions` (suggestion) suggests expanding a contraction, because the guide says to use contractions carefully. `ContractionsAvoid` (warning) flags the forms the guide prohibits, such as `it's`, `that's`, and `gonna`.
- `HeadingPunctuation` (warning) flags `? ! : ; ,` at the end of a heading. `HeadingPeriod` (error) flags a period.
- `Foreign` replaces `vs.` with `versus` in running text. `HeadingVersus` asks for `vs.` in headings, as the guide requires.
- `URLFormat` covers how to write a web address. `LinkText` flags vague link text such as `click here`.

`Acronyms` has exceptions for the acronyms that `acronyms.md` lists as universally recognized (USB, FAQ, URL, LED, RAM, CPU, API) and for dictionary acronyms (acronyms.md:38). It does not exempt GPIO, UART, SPI, and similar terms, because `acronyms.md` says to spell them out on first use on each page.

These rules are disabled (`.yml_ignored`) until the style guide resolves a conflict between its pages:

- `AMPM.yml_ignored`: AM/PM (numbers.md) versus a.m. (punctuation/periods.md).
- `Units.yml_ignored`: always abbreviated units (units-of-measurement.md) versus spelled-out units (numbers.md).
- `Spelling.yml_ignored`: needs an en_US dictionary and a vocabulary built from the glossary.

| Check | Implementations |
|:---|:---|
| `existence` | `Accessibility.yml`, `AdmonitionType.yml`, `Adverbs.yml`, `AltText.yml`, `Apostrophes.yml`, `Avoid.yml`, `CodeFormatting.yml`, `ColonMisuse.yml`, `CommaThen.yml`, `CompoundNumbers.yml`, `Condescending.yml`, `ContractionsAvoid.yml`, `Dashes.yml`, `DateFormat.yml`, `DateNumbers.yml`, `DateOrder.yml`, `Ellipses.yml`, `Exclamation.yml`, `FirstPerson.yml`, `FromRange.yml`, `Gender.yml`, `GeneralURL.yml`, `HeadingAcronyms.yml`, `HeadingCodeOnly.yml`, `HeadingColons.yml`, `HeadingDepth.yml`, `HeadingPeriod.yml`, `HeadingPunctuation.yml`, `Hyphens.yml`, `LeadingZero.yml`, `LinkText.yml`, `MonthYearComma.yml`, `Negative.yml`, `NonEnglish.yml`, `NumberWithUnit.yml`, `Ordinal.yml`, `OxfordComma.yml`, `Passive.yml`, `Percentages.yml`, `Plurals.yml`, `PrintReferences.yml`, `PriorReading.yml`, `Quotes.yml`, `RangeTime.yml`, `Semicolon.yml`, `Slang.yml`, `Spacing.yml`, `Suspended.yml`, `TableNotes.yml`, `TrademarkSymbols.yml`, `Vocab.yml`, `We.yml` |
| `substitution` | `AmericanSpelling.yml`, `Contractions.yml`, `CulturallySensitive.yml`, `Foreign.yml`, `GenderBias.yml`, `Glossary.yml`, `GlossaryPreferred.yml`, `HeadingVersus.yml`, `HexPrefix.yml`, `Idioms.yml`, `InformalAbbreviations.yml`, `OtherSubstitutions.yml`, `Shall.yml`, `Terms.yml`, `URLFormat.yml`, `Wordiness.yml` |
| `capitalization` | `Headings.yml` |
| `conditional` | `Acronyms.yml` |
| `occurrence` | `SentenceLength.yml` |

## Testing

Each rule has a fixture in `fixtures/<Rule>/` (`test.md` and `test.rst`, and a `.vale.ini` that enables only that rule) and a scenario in `features/rules/<Rule>.feature`. Run the tests with:

```bash
pip install docutils yamllint
bundle install
bundle exec cucumber --format progress
yamllint Nordic
```

The rst fixtures need `rst2html` on the `PATH` before cucumber runs. Without it, Vale produces no output for `.rst` files and the scenarios fail.

Each fixture has its own `.vale.ini` that enables only its rule. Its `[*.md]` and `[*.rst]` sections must match those of the root `.vale.ini`.

## Keeping the style up to date with the guide

`scripts/check-sources.py` checks every rule against a checkout of the [style guide source](https://github.com/NordicPlayground/techdocs-style-guide). It fails in these cases:

- the anchor of a rule's `link:` no longer exists on the guide page, or the page no longer exists.
- the quote in a `# Source: <page>.md:<line>, "<quote>"` comment is no longer near the cited line.

```bash
git clone https://github.com/NordicPlayground/techdocs-style-guide ../techdocs-style-guide
python3 scripts/check-sources.py --guide ../techdocs-style-guide
```

Run it when the guide publishes a new release. Add `--write-coverage` to regenerate `coverage/nordic-guide.yml` from the `link:` and `# Source:` lines of the rules. CI runs the check on every push, against the guide release set as `ref` in `.github/workflows/main.yml` (currently v1.0.2). Update that `ref` when you update the rules for a new release.

### Spelling vocabulary

`scripts/gen-vocab.py` writes `config/vocabularies/Nordic/accept.txt` from the term columns of `glossary.md` and `product-names.md`. It keeps only the words that Vale's default dictionary does not know, and leaves out any word that a Nordic rule prohibits, such as `BLE`. CI runs it with `--check` and fails if the file is out of date.

```bash
python3 scripts/gen-vocab.py --guide ../techdocs-style-guide
```

The spelling rule (`Nordic/Spelling.yml_ignored`) stays disabled. Even with this vocabulary, it gives 3,126 suggestions on the nRF Connect SDK documentation (`nrf/doc/nrf`, v3.1.0), mostly for product and project names the glossary does not list (Zigbee, Gazell, Memfault, zcbor) and for plural acronyms (LEDs, ICs). To use the vocabulary in your own project, copy `config/vocabularies/Nordic/` into your `StylesPath` and add `Vocab = Nordic` to your `.vale.ini`.

## Versions

See [CHANGELOG.md](CHANGELOG.md). Version 2.0.0 is the first release based on the Nordic TechDocs Style Guide. It is not compatible with the 1.x releases, which implemented the Microsoft Writing Style Guide.
