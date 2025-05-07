# NordicVale

> **NOTE**: This project is neither maintained nor endorsed by Microsoft.

This repository is a [fork](https://github.com/FrancescoSer/NordicVale) of a [Vale-compatible](https://github.com/errata-ai/vale) implementation of the [*Microsoft Writing Style Guide*](https://docs.microsoft.com/en-us/style-guide/welcome/) ([LICENSE](https://github.com/MicrosoftDocs/microsoft-style-guide/blob/master/LICENSE)), meant to reimplement the [Nordic Semi style guide](https://github.com/NordicPlayground/test-style-guide), a fork of the Microsoft Writing Style Guide.

# Best Way to Install Vale Without Causing Conflicts with NCS Requirements

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

# Original Instructions

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
