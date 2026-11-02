Feature: HeadingPeriod

    Scenario: HeadingPeriod
        When I test "HeadingPeriod"
        Then the output should contain exactly:
            """
            test.md:1:20:Nordic.HeadingPeriod:Do not end a heading with a period.
            test.md:9:28:Nordic.HeadingPeriod:Do not end a heading with a period.
            test.rst:1:18:Nordic.HeadingPeriod:Do not end a heading with a period.
            test.rst:13:25:Nordic.HeadingPeriod:Do not end a heading with a period.
            """
