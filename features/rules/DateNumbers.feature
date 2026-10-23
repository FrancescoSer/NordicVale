Feature: DateNumbers

    Scenario: DateNumbers in Markdown and reStructuredText
        When I test "DateNumbers"
        Then the output should contain exactly:
            """
            test.md:3:16:Nordic.DateNumbers:Do not use ordinal numbers for dates. Use a numeral, such as 'June 1'.
            test.md:5:7:Nordic.DateNumbers:Do not use ordinal numbers for dates. Use a numeral, such as 'June 1'.
            test.md:5:21:Nordic.DateNumbers:Do not use ordinal numbers for dates. Use a numeral, such as 'June 1'.
            test.md:7:21:Nordic.DateNumbers:Do not use ordinal numbers for dates. Use a numeral, such as 'June 1'.
            test.md:11:5:Nordic.DateNumbers:Do not use ordinal numbers for dates. Use a numeral, such as 'June 1'.
            test.rst:4:16:Nordic.DateNumbers:Do not use ordinal numbers for dates. Use a numeral, such as 'June 1'.
            test.rst:6:7:Nordic.DateNumbers:Do not use ordinal numbers for dates. Use a numeral, such as 'June 1'.
            test.rst:6:21:Nordic.DateNumbers:Do not use ordinal numbers for dates. Use a numeral, such as 'June 1'.
            test.rst:8:21:Nordic.DateNumbers:Do not use ordinal numbers for dates. Use a numeral, such as 'June 1'.
            test.rst:12:5:Nordic.DateNumbers:Do not use ordinal numbers for dates. Use a numeral, such as 'June 1'.
            """
