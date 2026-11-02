Feature: ColonMisuse

    Scenario: ColonMisuse
        When I test "ColonMisuse"
        Then the output should contain exactly:
            """
            test.md:3:1:Nordic.ColonMisuse:Do not use a colon in 'Figure 3: shows'.
            test.md:5:9:Nordic.ColonMisuse:Do not use a colon in 'following diagram: Figure 3'.
            test.md:7:12:Nordic.ColonMisuse:Do not use a colon in 'are: cyan,'.
            test.md:9:22:Nordic.ColonMisuse:Do not use a colon in 'Voltage: field'.
            test.rst:4:1:Nordic.ColonMisuse:Do not use a colon in 'Figure 3: shows'.
            test.rst:6:9:Nordic.ColonMisuse:Do not use a colon in 'following diagram: Figure 3'.
            test.rst:8:12:Nordic.ColonMisuse:Do not use a colon in 'are: cyan,'.
            test.rst:10:22:Nordic.ColonMisuse:Do not use a colon in 'Voltage: field'.
            """
