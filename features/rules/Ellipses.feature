Feature: Ellipses

    Scenario: Ellipses in prose
        When I test "Ellipses"
        Then the output should contain exactly:
            """
            test.md:3:16:Nordic.Ellipses:In general, do not use an ellipsis.
            test.md:5:21:Nordic.Ellipses:In general, do not use an ellipsis.
            test.rst:4:16:Nordic.Ellipses:In general, do not use an ellipsis.
            test.rst:6:21:Nordic.Ellipses:In general, do not use an ellipsis.
            """
