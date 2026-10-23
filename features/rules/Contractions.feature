Feature: Contractions

    Scenario: Contractions with straight and curly apostrophes
        When I test "Contractions"
        Then the output should contain exactly:
            """
            test.md:3:1:Nordic.Contractions:Use 'do not' instead of 'Don't'.
            test.md:5:1:Nordic.Contractions:Use 'it is' instead of 'It's'.
            test.md:5:17:Nordic.Contractions:Use 'you are' instead of 'you’re'.
            test.md:7:48:Nordic.Contractions:Use 'that is' instead of 'that’s'.
            test.md:9:5:Nordic.Contractions:Use 'must not' instead of 'mustn't'.
            test.md:9:25:Nordic.Contractions:Use 'we will' instead of 'we'll'.
            test.md:9:36:Nordic.Contractions:Use 'there is' instead of 'There's'.
            test.rst:4:1:Nordic.Contractions:Use 'do not' instead of 'Don't'.
            test.rst:6:1:Nordic.Contractions:Use 'it is' instead of 'It's'.
            test.rst:6:17:Nordic.Contractions:Use 'you are' instead of 'you’re'.
            test.rst:8:48:Nordic.Contractions:Use 'that is' instead of 'that’s'.
            test.rst:10:5:Nordic.Contractions:Use 'must not' instead of 'mustn't'.
            test.rst:10:25:Nordic.Contractions:Use 'we will' instead of 'we'll'.
            test.rst:10:36:Nordic.Contractions:Use 'there is' instead of 'There's'.
            """
