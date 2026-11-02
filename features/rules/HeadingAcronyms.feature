Feature: HeadingAcronyms

    Scenario: Acronyms in headings
        When I test "HeadingAcronyms"
        Then the output should contain exactly:
            """
            test.md:1:17:Nordic.HeadingAcronyms:Avoid acronyms in headings: 'UART'. Spell out the term, and define the acronym in the body text.
            test.md:7:15:Nordic.HeadingAcronyms:Avoid acronyms in headings: 'I2C'. Spell out the term, and define the acronym in the body text.
            test.md:9:12:Nordic.HeadingAcronyms:Avoid acronyms in headings: 'GPIOTE'. Spell out the term, and define the acronym in the body text.
            test.md:9:23:Nordic.HeadingAcronyms:Avoid acronyms in headings: 'SAADC'. Spell out the term, and define the acronym in the body text.
            test.md:11:25:Nordic.HeadingAcronyms:Avoid acronyms in headings: '(Bluetooth LE)'. Spell out the term, and define the acronym in the body text.
            test.md:13:48:Nordic.HeadingAcronyms:Avoid acronyms in headings: '(UART)'. Spell out the term, and define the acronym in the body text.
            test.md:21:26:Nordic.HeadingAcronyms:Avoid acronyms in headings: 'DKs'. Spell out the term, and define the acronym in the body text.
            test.rst:1:15:Nordic.HeadingAcronyms:Avoid acronyms in headings: 'UART'. Spell out the term, and define the acronym in the body text.
            test.rst:9:12:Nordic.HeadingAcronyms:Avoid acronyms in headings: 'I2C'. Spell out the term, and define the acronym in the body text.
            test.rst:12:9:Nordic.HeadingAcronyms:Avoid acronyms in headings: 'GPIOTE'. Spell out the term, and define the acronym in the body text.
            test.rst:12:20:Nordic.HeadingAcronyms:Avoid acronyms in headings: 'SAADC'. Spell out the term, and define the acronym in the body text.
            test.rst:15:22:Nordic.HeadingAcronyms:Avoid acronyms in headings: '(Bluetooth LE)'. Spell out the term, and define the acronym in the body text.
            test.rst:18:45:Nordic.HeadingAcronyms:Avoid acronyms in headings: '(UART)'. Spell out the term, and define the acronym in the body text.
            test.rst:30:23:Nordic.HeadingAcronyms:Avoid acronyms in headings: 'DKs'. Spell out the term, and define the acronym in the body text.
            """
