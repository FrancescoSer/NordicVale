Feature: HeadingCodeOnly

    Scenario: HeadingCodeOnly
        When I test "HeadingCodeOnly"
        Then the output should contain exactly:
            """
            test.md:3:1:Nordic.HeadingCodeOnly:Add a descriptive noun to a heading that contains only code, for example 'The `nrfutil` command'.
            test.md:7:1:Nordic.HeadingCodeOnly:Add a descriptive noun to a heading that contains only code, for example 'The `nrfutil` command'.
            test.rst:4:1:Nordic.HeadingCodeOnly:Add a descriptive noun to a heading that contains only code, for example 'The `nrfutil` command'.
            test.rst:10:1:Nordic.HeadingCodeOnly:Add a descriptive noun to a heading that contains only code, for example 'The `nrfutil` command'.
            """
