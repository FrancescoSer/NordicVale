Feature: Acronyms

    Scenario: Undefined acronyms
        When I test "Acronyms"
        Then the output should contain exactly:
            """
            test.md:9:5:Nordic.Acronyms:'DAFB' has no definition. Spell out the term on first use, with the acronym in parentheses.
            test.md:9:39:Nordic.Acronyms:'HFXO' has no definition. Spell out the term on first use, with the acronym in parentheses.
            test.rst:10:5:Nordic.Acronyms:'DAFB' has no definition. Spell out the term on first use, with the acronym in parentheses.
            test.rst:10:39:Nordic.Acronyms:'HFXO' has no definition. Spell out the term on first use, with the acronym in parentheses.
            """
