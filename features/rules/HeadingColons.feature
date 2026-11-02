Feature: HeadingColons

    Scenario: Lowercase word after a colon in a heading
        When I test "HeadingColons"
        Then the output should contain exactly:
            """
            test.md:1:7:Nordic.HeadingColons:Capitalize the first word after the colon in ': m'.
            test.rst:1:5:Nordic.HeadingColons:Capitalize the first word after the colon in ': m'.
            """
