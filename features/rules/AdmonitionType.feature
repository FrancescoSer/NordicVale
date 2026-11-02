Feature: AdmonitionType

    Scenario: AdmonitionType
        When I test "AdmonitionType"
        Then the output should contain exactly:
            """
            test.md:6:1:Nordic.AdmonitionType:Use only the note, caution, and warning admonitions, not '!!! tip'. For 'attention', use 'caution'.
            test.md:9:1:Nordic.AdmonitionType:Use only the note, caution, and warning admonitions, not '!!! attention'. For 'attention', use 'caution'.
            test.md:12:1:Nordic.AdmonitionType:Use only the note, caution, and warning admonitions, not '??? info'. For 'attention', use 'caution'.
            test.rst:7:1:Nordic.AdmonitionType:Use only the note, caution, and warning admonitions, not '.. tip::'. For 'attention', use 'caution'.
            test.rst:10:1:Nordic.AdmonitionType:Use only the note, caution, and warning admonitions, not '.. attention::'. For 'attention', use 'caution'.
            test.rst:13:1:Nordic.AdmonitionType:Use only the note, caution, and warning admonitions, not '.. important::'. For 'attention', use 'caution'.
            """
