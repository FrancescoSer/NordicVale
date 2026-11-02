Feature: Percentages

    Scenario: Percentages in Markdown and reStructuredText
        When I test "Percentages"
        Then the output should contain exactly:
            """
            test.md:3:10:Nordic.Percentages:Use a numeral for a percentage, not 'fifty percent'.
            test.md:5:6:Nordic.Percentages:Use a numeral for a percentage, not 'one percent'.
            test.md:5:22:Nordic.Percentages:Use a numeral for a percentage, not 'twenty-five percent'.
            test.rst:4:10:Nordic.Percentages:Use a numeral for a percentage, not 'fifty percent'.
            test.rst:6:6:Nordic.Percentages:Use a numeral for a percentage, not 'one percent'.
            test.rst:6:22:Nordic.Percentages:Use a numeral for a percentage, not 'twenty-five percent'.
            """
