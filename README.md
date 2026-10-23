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
pip install vale docutils
```

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

Add the style to your own `.vale.ini` and run `vale sync`, or point `StylesPath` at a clone of this repository:

```ini
StylesPath = .
MinAlertLevel = suggestion

Packages = Nordic

[*.{md,rst}]
BasedOnStyles = Nordic
```

The `.vale.ini` in this repository also ignores reStructuredText roles (such as `:ref:` and `:c:func:`), inline literals, `|substitutions|`, and the embedded targets of hyperlinks. Copy its `[*.rst]` section into your configuration.

## Markdown and reStructuredText

- Vale renders `.rst` files with docutils (`rst2html`), so docutils must be installed in the environment that runs Vale. Without it, Vale cannot lint `.rst` files.
- docutils already removes literal blocks (`::`), `code`, `code-block`, and `parsed-literal` directives, comments, and inline literals before linting. It also drops the content of Sphinx-only directives, such as `toctree`, that it does not know.
- Markdown code spans and fenced code blocks are ignored by default.

## Rules

Each rule in `Nordic/` has a `link:` to the page of the [Nordic TechDocs Style Guide](https://nordicplayground.github.io/techdocs-style-guide/) it enforces, and a `# Source:` comment that quotes the guide. Entries that come only from the Microsoft Writing Style Guide, which the Nordic guide was forked from, have a `# source: MSWSG` comment.

`coverage/nordic-guide.yml` lists, for each page of the guide, the rules that enforce it.

These rules are disabled (`.yml_ignored`) until the style guide resolves a conflict between its pages:

- `AMPM.yml_ignored`: AM/PM (numbers.md) versus a.m. (punctuation/periods.md).
- `Units.yml_ignored`: always abbreviated units (units-of-measurement.md) versus spelled-out units (numbers.md).
- `Spelling.yml_ignored`: needs an en_US dictionary and a vocabulary built from the glossary.

| Check | Implementations |
|:---|:---|
| `existence` | `Accessibility.yml`, `Adverbs.yml`, `Avoid.yml`, `Dashes.yml`, `DateFormat.yml`, `DateNumbers.yml`, `DateOrder.yml`, `Ellipses.yml`, `FirstPerson.yml`, `Gender.yml`, `GeneralURL.yml`, `HeadingAcronyms.yml`, `HeadingColons.yml`, `HeadingPunctuation.yml`, `Hyphens.yml`, `Negative.yml`, `Ordinal.yml`, `OxfordComma.yml`, `Passive.yml`, `Percentages.yml`, `Plurals.yml`, `Quotes.yml`, `RangeTime.yml`, `Semicolon.yml`, `Spacing.yml`, `Suspended.yml`, `Vocab.yml`, `We.yml` |
| `substitution` | `Contractions.yml`, `Foreign.yml`, `GenderBias.yml`, `Glossary.yml`, `GlossaryPreferred.yml`, `OtherSubstitutions.yml`, `Terms.yml`, `URLFormat.yml`, `Wordiness.yml` |
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
