Feature: Shall

    Scenario: Shall
        When I test "Shall"
        Then the output should contain exactly:
            """
            test.md:3:12:Nordic.Shall:Use 'must' or 'will' instead of 'shall'. Use 'must' for a requirement and 'will' for future behavior.
            test.md:5:1:Nordic.Shall:Use 'must' or 'will' instead of 'Shall'. Use 'must' for a requirement and 'will' for future behavior.
            test.rst:4:12:Nordic.Shall:Use 'must' or 'will' instead of 'shall'. Use 'must' for a requirement and 'will' for future behavior.
            test.rst:6:1:Nordic.Shall:Use 'must' or 'will' instead of 'Shall'. Use 'must' for a requirement and 'will' for future behavior.
            """
