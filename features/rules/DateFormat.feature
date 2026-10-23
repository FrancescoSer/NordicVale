Feature: DateFormat

    Scenario: DateFormat in Markdown and reStructuredText
        When I test "DateFormat"
        Then the output should contain exactly:
            """
            test.md:3:19:Nordic.DateFormat:Use the 'June 12, 2017' format, not '12 Mar 2016'.
            test.md:5:19:Nordic.DateFormat:Use the 'June 12, 2017' format, not '3 April 2024'.
            test.md:5:36:Nordic.DateFormat:Use the 'June 12, 2017' format, not '7 June 2025'.
            test.md:7:19:Nordic.DateFormat:Use the 'June 12, 2017' format, not '15 Oct 2023'.
            test.rst:4:19:Nordic.DateFormat:Use the 'June 12, 2017' format, not '12 Mar 2016'.
            test.rst:6:19:Nordic.DateFormat:Use the 'June 12, 2017' format, not '3 April 2024'.
            test.rst:6:36:Nordic.DateFormat:Use the 'June 12, 2017' format, not '7 June 2025'.
            test.rst:8:19:Nordic.DateFormat:Use the 'June 12, 2017' format, not '15 Oct 2023'.
            """
