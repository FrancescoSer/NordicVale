Feature: InformalAbbreviations

    Scenario: InformalAbbreviations
        When I test "InformalAbbreviations"
        Then the output should contain exactly:
            """
            test.md:3:12:Nordic.InformalAbbreviations:Use 'firmware' instead of 'FW'.
            test.md:3:23:Nordic.InformalAbbreviations:Use 'hardware' instead of 'HW'.
            test.md:3:37:Nordic.InformalAbbreviations:Use 'software' instead of 'SW'.
            test.md:3:48:Nordic.InformalAbbreviations:Use 'database' instead of 'DB'.
            test.md:5:11:Nordic.InformalAbbreviations:Use 'repository' instead of 'repo'.
            test.md:5:29:Nordic.InformalAbbreviations:Use 'documentation' instead of 'docs'.
            test.md:5:44:Nordic.InformalAbbreviations:Use 'configuration' instead of 'config'.
            test.rst:4:12:Nordic.InformalAbbreviations:Use 'firmware' instead of 'FW'.
            test.rst:4:23:Nordic.InformalAbbreviations:Use 'hardware' instead of 'HW'.
            test.rst:4:37:Nordic.InformalAbbreviations:Use 'software' instead of 'SW'.
            test.rst:4:48:Nordic.InformalAbbreviations:Use 'database' instead of 'DB'.
            test.rst:6:11:Nordic.InformalAbbreviations:Use 'repository' instead of 'repo'.
            test.rst:6:29:Nordic.InformalAbbreviations:Use 'documentation' instead of 'docs'.
            test.rst:6:44:Nordic.InformalAbbreviations:Use 'configuration' instead of 'config'.
            """
