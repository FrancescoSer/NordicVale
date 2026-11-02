Feature: MonthYearComma

    Scenario: MonthYearComma
        When I test "MonthYearComma"
        Then the output should contain exactly:
            """
            test.md:3:21:Nordic.MonthYearComma:Do not use a comma between the month and the year in 'November, 1990'.
            test.rst:4:21:Nordic.MonthYearComma:Do not use a comma between the month and the year in 'November, 1990'.
            """
