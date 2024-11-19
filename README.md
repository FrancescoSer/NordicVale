# NordicVale

> **NOTE**: This project is neither maintained nor endorsed by Microsoft.

This repository is a [fork](https://github.com/FrancescoSer/NordicVale) of a [Vale-compatible](https://github.com/errata-ai/vale) implementation of the [*Microsoft Writing Style Guide*](https://docs.microsoft.com/en-us/style-guide/welcome/) ([LICENSE](https://github.com/MicrosoftDocs/microsoft-style-guide/blob/master/LICENSE)), meant to reimplement the [Nordic Semi style guide](https://github.com/NordicPlayground/test-style-guide), a fork of the Microsoft Writing Style Guide.

## Getting Started

To get started, add the package to your configuration file (as shown below) and then run `vale sync`.

```ini
StylesPath = .
MinAlertLevel = suggestion

Packages = Nordic

[*.rst]
BasedOnStyles = Vale, Nordic
```

## Extension Points

|   Check    |                    Implementations                   |
|:------------:|:-------------------------------------------------:|
| `existence` | `Accessibility.yml`, `Adverbs.yml`, `AMPM.yml`, `Auto.yml`, `Avoid.yml`, `Dashes.yml`, `DateFormat.yml`, `Ellipses.yml`, `FirstPerson.yml`, `HeadingColons.yml`, `HeadingPunctuation.yml`, `Hyphens.yml`, `OxfordComma.yml`, `Passive.yml`, `Quotes.yml` |
| `substitution`  | `Backend.yml` (POS tags), `ComplexWords.yml`, `Contractions.yml`, `Foreign.yml`, `Terms.yml` |
| `occurrence`  | N/A |
| `repetition`  | N/A |
| `consistency`| N/A |
| `capitalization`  | `Headings.yml` |
| `readability`  | N/A |
| `conditional`  | `Acronyms.yml` |
| `spelling`  | N/A |
