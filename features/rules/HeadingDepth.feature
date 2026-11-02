Feature: HeadingDepth

    Scenario: HeadingDepth
        When I test "HeadingDepth"
        Then the output should contain exactly:
            """
            test.md:9:7:Nordic.HeadingDepth:Use a maximum of four heading levels. Restructure the content instead of adding a fifth level.
            test.md:11:8:Nordic.HeadingDepth:Use a maximum of four heading levels. Restructure the content instead of adding a fifth level.
            test.rst:16:1:Nordic.HeadingDepth:Use a maximum of four heading levels. Restructure the content instead of adding a fifth level.
            """
