Feature: Plurals

    Scenario: Plurals in Markdown and reStructuredText
        When I test "Plurals"
        Then the output should contain exactly:
            """
            test.md:3:12:Nordic.Plurals:Do not use 'register(s)'. Use the plural, or the singular when there is always one.
            test.md:5:5:Nordic.Plurals:Do not use 'checkbox(es)'. Use the plural, or the singular when there is always one.
            test.md:5:45:Nordic.Plurals:Do not use 'add-on(s)'. Use the plural, or the singular when there is always one.
            test.rst:4:12:Nordic.Plurals:Do not use 'register(s)'. Use the plural, or the singular when there is always one.
            test.rst:6:5:Nordic.Plurals:Do not use 'checkbox(es)'. Use the plural, or the singular when there is always one.
            test.rst:6:45:Nordic.Plurals:Do not use 'add-on(s)'. Use the plural, or the singular when there is always one.
            """
