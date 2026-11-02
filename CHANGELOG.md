# Changelog

All rules link to the page of the [Nordic TechDocs Style Guide](https://nordicplayground.github.io/techdocs-style-guide/) they enforce, and quote it in a `# Source:` comment. The line numbers below refer to guide release 1.0.2.

## 2.0.0 (unreleased)

Version 2.0.0 is the first release based on the Nordic TechDocs Style Guide. It is not compatible with the 1.x releases, which implemented the Microsoft Writing Style Guide (MSWSG). It requires Vale 3.25.1 or later.

This release has two parts:

- The update of the existing rules to match the guide.
- The new rules and fixes from the gap analysis.

### New rules

These rules come from tier 1 of the gap analysis. Each has a Markdown and a reStructuredText fixture, and was run over the guide and over the nRF Connect SDK documentation (`nrf/doc/nrf`, v3.1.0).

| Rule | Level | Source |
|:---|:---|:---|
| `AdmonitionType` | warning | `content-structure/notes-cautions-tips.md:5` |
| `AltText` | warning | `writing-tips/accessibility.md:71` |
| `AmericanSpelling` | error | `grammar/index.md:7` |
| `Apostrophes` | error | `punctuation/apostrophes.md:24-31` |
| `CodeFormatting` | warning | `punctuation/quotation-marks.md:27-28` |
| `ColonMisuse` | warning | `punctuation/colons.md:24-28` |
| `CommaThen` | warning | `punctuation/commas.md:31` |
| `CompoundNumbers` | error | `numbers.md:73` |
| `Condescending` | warning | `writing-tips/bias-free-communication.md:77-185` |
| `ContractionsAvoid` | warning | `writing-tips/index.md:99-107`, `grammar/index.md:75-81` |
| `CulturallySensitive` | warning | `writing-tips/bias-free-communication.md:62-68` |
| `Exclamation` | warning | `punctuation/exclamation-points.md:3` |
| `FromRange` | error | `numbers.md:140` |
| `HeadingCodeOnly` | warning | `content-structure/headings.md:45-55` |
| `HeadingDepth` | warning | `content-structure/headings.md:70` |
| `HeadingPeriod` | error | `content-structure/headings.md:99` |
| `HeadingVersus` | warning | `content-structure/headings.md:104` |
| `HexPrefix` | error | `capitalization.md:150-154` |
| `Idioms` | warning | `writing-tips/internationalization.md:16-31` |
| `InformalAbbreviations` | warning | `acronyms.md:184-194` |
| `LeadingZero` | error | `numbers.md:97` |
| `LinkText` | warning | `content-structure/links.md:167` |
| `MonthYearComma` | error | `punctuation/commas.md:33` |
| `NonEnglish` | warning | `grammar/index.md:9` |
| `NumberWithUnit` | error | `units-of-measurement.md:31` |
| `PrintReferences` | warning | `writing-tips/online-writing.md:147-154` |
| `PriorReading` | warning | `writing-tips/online-context.md:27-34` |
| `Shall` | warning | `writing-tips/jargon.md:95`, `:101-108` |
| `Slang` | warning | `writing-tips/internationalization.md:42-51` |
| `TableNotes` | warning | `content-structure/tables.md:26` |
| `TrademarkSymbols` | error | `trademarks.md:70-73` |

Changes from the prototypes in the gap analysis:

- `CommaThen`: does not flag a conditional clause (`If ..., then ...`, also after a `</br>` in a table cell). The message no longer suggests `, and then`, which `punctuation/commas.md:32` also lists as incorrect.
- `CodeFormatting`: a `.. code-block:: C++` body is no longer linted (see Configuration).
- `HeadingDepth`: checks `h5` and `h6`, so it works in reStructuredText, where headings render one level up. In reStructuredText it flags from the sixth level.
- `Idioms` and `AdmonitionType`: the messages are reworded so the quotation marks render correctly.
- `InformalAbbreviations`: does not flag `DB` after an nRF part number (`nRF21540 DB` is a development board).
- `Slang`: does not flag `cool-down`.
- `TrademarkSymbols`: does not flag a sentence about the symbol (`First use has ®`), and the alert covers the whole word.

### Changes to existing rules

- `Accessibility`: flags `able-bodied` and `non-disabled` again. The guide does not cover them, but the [MSWSG accessibility terms](https://learn.microsoft.com/en-us/style-guide/a-z-word-list-term-collections/term-collections/accessibility-terms) still list them as terms to avoid. They are tagged `# source: MSWSG`.
- `Adverbs`: adds `actually` (`writing-tips/scannable-writing.md:156`) and `basically`.
- `Contractions`: the forms the guide prohibits moved to `ContractionsAvoid`: `ain't`, `here's`, `how's`, `it's`, `mightn't`, `mustn't`, `needn't`, `shan't`, `that's`, `there's`, `what's`, `when's`, `where's`, `who's`, `gonna`, `gotta`, and `wanna`. `Contractions` stays a suggestion, because the guide says to use contractions carefully, not to avoid them.
- `FirstPerson`: does not flag `My` in the product name Find My Device.
- `Foreign`: no longer checks headings, where the guide requires `vs.` (`content-structure/headings.md:104`). `HeadingVersus` checks headings.
- `Glossary`: does not flag a Jira issue key such as `NCSDK-12345` as an abbreviation of nRF Connect SDK.
- `HeadingPunctuation`: no longer flags a period. `HeadingPeriod` (error) does.
- `URLFormat`: no longer flags `click here`. `LinkText` does.
- `Wordiness`: adds `in the process of`, color, size, and shape phrases (`red in color`, `10 MB in size`, `round in shape`), `serves as a means of`, `it is possible to`, `it should be noted that`, `it is important to note that`, `it is important to mention that`, `it is recommended that you`, and `the fact that` (not after `due to`, `despite`, `in spite of`, `because of`, `based on`, or `matter of`). `with regard to` now suggests `about` (`writing-tips/jargon.md:93`).

`Acronyms` does not exempt GPIO, UART, SPI, PWM, ADC, DMA, RTC, or TWI. `acronyms.md:207-210` says to spell out technical terms such as GPIO, UART, and SPI on first use on each page. A list of well-known acronyms that do not need spelling out has been proposed to the guide owners.

### Configuration

- `.vale.ini` `[*.md]` `TokenIgnores`: skips `</br>`, which is not a valid HTML tag. Vale dropped it and joined the text on either side, so `Spacing` flagged table cells such as `16 bits.</br>It`. The style guide has 5 of them.
- `.vale.ini` `[*.rst]` `TokenIgnores`: skips a `code-block`, `code`, or `sourcecode` directive whose language contains `+` or `#`, such as `C++`. Vale 3.25.1 only recognizes code directives whose language matches `[\w-]+`, so it linted the body of these blocks as prose. The nRF Connect SDK documentation has 58 of them.
- `.vale.ini` `[sphinx]`: `CodeDirectives` lists `msc`, `uml`, `plantuml`, `ncs-include`, `table-from-rows`, `options-from-kconfig`, and `manifest-revisions-table`. Vale lints the body of a directive that docutils does not know as prose, unless it is listed here.
- `meta.json`: requires Vale 3.25.1 or later.

### Tools, tests, and continuous integration

- `scripts/check-sources.py`: checks that every `link:` anchor and every `# Source:` quote still matches the guide, and regenerates `coverage/nordic-guide.yml` with `--write-coverage`.
- CI runs `check-sources.py` against the guide release set in `.github/workflows/main.yml`.
- `scripts/gen-vocab.py`: writes the spelling vocabulary `config/vocabularies/Nordic/accept.txt` (18 words) from `glossary.md` and `product-names.md`. CI checks that it is up to date. The spelling rule stays disabled: it gives 3,126 suggestions on the nRF Connect SDK documentation, even with the vocabulary.
- 71 rules, each with a cucumber feature, a Markdown fixture, and a reStructuredText fixture.
- The `Glossary` reStructuredText fixture has a case with the 40 roles that the nRF Connect SDK documentation uses most, such as `:kconfig:option:`, `:zephyr:board:`, and `:guilabel:`. It checks that `TokenIgnores` skips each of them.
- README: install Vale 3.25.1 or later with `pip install "vale>=3.25.1"` or the standalone binary, not the snap build; describe the reStructuredText settings, the rule pairs, the levels, and the source check.

### Update to match the guide (commit `0ef70e3`)

Every rule was checked against guide release 1.0.2. Entries that come only from the MSWSG are kept and tagged `# source: MSWSG`. Messages have no contractions. Rules lint both Markdown and reStructuredText.

Level changes:

| Rule | Before | After | Why |
|:---|:---|:---|:---|
| `Contractions` | error | suggestion | The guide says to use contractions carefully, not to avoid them. |
| `DateOrder` | error | warning | The guide allows a numeric format that is specified for the audience. |
| `GeneralURL` | warning | suggestion | The guide limits it to content for a general audience. |
| `OtherSubstitutions` | error | warning | `may` can mean `might` or `can`. |
| `Adverbs` | warning | suggestion | A judgment call. |
| `Accessibility` | suggestion | warning | The guide says to avoid these terms. |
| `URLFormat` | suggestion | warning | The guide prescribes `URL of`, not `URL for`. |
| `Suspended` | warning | error | The guide says not to use a hyphen by itself in suspended form. |
| `SentenceLength` | 30 words | 25 words | `grammar/sentence-structure.md` |

New rules:

- `Glossary` (error): prohibited terms from `glossary.md` and `product-names.md`, such as `BLE`, `NCS`, and `SPM`.
- `GlossaryPreferred` (warning): restricted terms and spellings from the same pages.

Per rule:

- `Accessibility`: narrower patterns (`disabled people`, not `disabled`), and adds `deaf-mute`, `special needs`, and `hearing-impaired` variants.
- `Acronyms`: definitions can contain symbols and lowercase words; the exceptions are limited to the guide's universally recognized acronyms and dictionary acronyms.
- `Adverbs`: adds `easy`, `just`, `obviously`, and `simply`.
- `Avoid`: removes `and so on`, which the guide recommends.
- `Auto.yml_ignored`: merged into `Hyphens`.
- `Dashes`, `DateFormat`, `DateNumbers`, `Ellipses`, `Negative`, `Plurals`, `Quotes`, `Semicolon`, `Spacing`: regex fixes, such as unmatched month names in `DateFormat`.
- `FirstPerson` and `We`: case-sensitive, so a lowercase `i` (a loop counter) and `US` do not match. `We recommend` is allowed.
- `Foreign`: adds `et al.` and `vs`.
- `Gender`: adds `his/her`, `(s)he`, and the `he or she` forms.
- `GenderBias`: fixes a typo in `doormen`, and updates the replacements.
- `HeadingAcronyms`: flags acronym definitions in headings, and does not flag part numbers such as BH1749 or CC3XX.
- `HeadingPunctuation`: adds `:`, `;`, and `,`.
- `Headings`: the exception list keeps only Nordic terms.
- `OtherSubstitutions`: `may` suggests `might` or `can`.
- `OxfordComma`: fewer false positives on phrases that are not lists.
- `Passive`: allows `based`, `located`, `required`, and `supported`.
- `Percentages`: fixes the `[a-zA-z]` range.
- `RangeTime`: no greedy matches across a line.
- `Terms` and `Wordiness`: updated from the guide, with the MSWSG-only entries tagged.
- `AMPM.yml_ignored` and `Units.yml_ignored`: stay disabled until the guide resolves its conflicts on these topics.
