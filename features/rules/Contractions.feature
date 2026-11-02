Feature: Contractions

    Scenario: Contractions with straight and curly apostrophes
        When I test "Contractions"
        Then the output should contain exactly:
            """
            test.md:3:1:Nordic.Contractions:Use 'do not' instead of 'Don't'.
            test.md:5:17:Nordic.Contractions:Use 'you are' instead of 'you’re'.
            test.md:9:25:Nordic.Contractions:Use 'we will' instead of 'we'll'.
            test.rst:4:1:Nordic.Contractions:Use 'do not' instead of 'Don't'.
            test.rst:6:17:Nordic.Contractions:Use 'you are' instead of 'you’re'.
            test.rst:10:25:Nordic.Contractions:Use 'we will' instead of 'we'll'.
            """
