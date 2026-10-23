Feature: Semicolon

    Scenario: Semicolons in prose
        When I test "Semicolon"
        Then the output should contain exactly:
            """
            test.md:3:35:Nordic.Semicolon:Avoid semicolons. Split the sentence into multiple sentences or a list.
            test.rst:4:35:Nordic.Semicolon:Avoid semicolons. Split the sentence into multiple sentences or a list.
            """
