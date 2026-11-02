Feature: OtherSubstitutions

    Scenario: May versus might and can
        When I test "OtherSubstitutions"
        Then the output should contain exactly:
            """
            test.md:3:12:Nordic.OtherSubstitutions:Use 'might' or 'can' instead of 'may'. Use 'might' for possibility and 'can' for ability.
            test.md:3:47:Nordic.OtherSubstitutions:Use 'might' or 'can' instead of 'may'. Use 'might' for possibility and 'can' for ability.
            test.rst:4:12:Nordic.OtherSubstitutions:Use 'might' or 'can' instead of 'may'. Use 'might' for possibility and 'can' for ability.
            test.rst:4:47:Nordic.OtherSubstitutions:Use 'might' or 'can' instead of 'may'. Use 'might' for possibility and 'can' for ability.
            """
