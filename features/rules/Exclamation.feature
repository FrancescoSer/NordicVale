Feature: Exclamation

    Scenario: Exclamation
        When I test "Exclamation"
        Then the output should contain exactly:
            """
            test.md:3:14:Nordic.Exclamation:Do not use an exclamation point in 'done!'.
            test.rst:4:14:Nordic.Exclamation:Do not use an exclamation point in 'done!'.
            """
