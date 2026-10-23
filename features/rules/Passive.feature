Feature: Passive

    Scenario: Passive voice
        When I test "Passive"
        Then the output should contain exactly:
            """
            test.md:3:20:Nordic.Passive:'is validated' looks like passive voice.
            test.md:5:6:Nordic.Passive:'was broken' looks like passive voice.
            test.md:7:17:Nordic.Passive:'is committed' looks like passive voice.
            test.rst:4:20:Nordic.Passive:'is validated' looks like passive voice.
            test.rst:6:6:Nordic.Passive:'was broken' looks like passive voice.
            test.rst:8:17:Nordic.Passive:'is committed' looks like passive voice.
            """
