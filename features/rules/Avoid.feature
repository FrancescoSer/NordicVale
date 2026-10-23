Feature: Avoid

    Scenario: Terms from the MSWSG A-Z word list
        When I test "Avoid"
        Then the output should contain exactly:
            """
            test.md:3:13:Nordic.Avoid:Do not use 'app developer'.
            test.md:3:33:Nordic.Avoid:Do not use 'application developer'.
            test.md:5:15:Nordic.Avoid:Do not use 'application program'.
            test.md:5:44:Nordic.Avoid:Do not use 'app file'.
            test.md:7:7:Nordic.Avoid:Do not use 'contiguous selection'.
            test.rst:4:13:Nordic.Avoid:Do not use 'app developer'.
            test.rst:4:33:Nordic.Avoid:Do not use 'application developer'.
            test.rst:6:15:Nordic.Avoid:Do not use 'application program'.
            test.rst:6:44:Nordic.Avoid:Do not use 'app file'.
            test.rst:8:7:Nordic.Avoid:Do not use 'contiguous selection'.
            """
