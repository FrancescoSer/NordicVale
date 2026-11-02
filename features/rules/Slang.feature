Feature: Slang

    Scenario: Slang
        When I test "Slang"
        Then the output should contain exactly:
            """
            test.md:3:16:Nordic.Slang:Do not use slang or informal language such as 'kinda'.
            test.md:3:22:Nordic.Slang:Do not use slang or informal language such as 'awesome'.
            test.md:3:34:Nordic.Slang:Do not use slang or informal language such as 'a bunch of'.
            test.md:3:45:Nordic.Slang:Do not use slang or informal language such as 'stuff'.
            test.md:5:11:Nordic.Slang:Do not use slang or informal language such as 'cool'.
            test.md:5:33:Nordic.Slang:Do not use slang or informal language such as 'super easy'.
            test.rst:4:16:Nordic.Slang:Do not use slang or informal language such as 'kinda'.
            test.rst:4:22:Nordic.Slang:Do not use slang or informal language such as 'awesome'.
            test.rst:4:34:Nordic.Slang:Do not use slang or informal language such as 'a bunch of'.
            test.rst:4:45:Nordic.Slang:Do not use slang or informal language such as 'stuff'.
            test.rst:6:11:Nordic.Slang:Do not use slang or informal language such as 'cool'.
            test.rst:6:33:Nordic.Slang:Do not use slang or informal language such as 'super easy'.
            """
