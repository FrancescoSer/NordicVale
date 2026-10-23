Feature: Spacing

    Scenario: Spaces after end punctuation
        When I test "Spacing"
        Then the output should contain exactly:
            """
            test.md:3:18:Nordic.Spacing:Use one space after the punctuation in 'okay.  This'.
            test.md:5:11:Nordic.Spacing:Use one space after the punctuation in 'finished.Then'.
            test.rst:4:18:Nordic.Spacing:Use one space after the punctuation in 'okay.  This'.
            test.rst:6:11:Nordic.Spacing:Use one space after the punctuation in 'finished.Then'.
            """
