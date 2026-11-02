Feature: CompoundNumbers

    Scenario: CompoundNumbers
        When I test "CompoundNumbers"
        Then the output should contain exactly:
            """
            test.md:3:15:Nordic.CompoundNumbers:Hyphenate the spelled-out compound number 'twenty five'.
            test.md:3:43:Nordic.CompoundNumbers:Hyphenate the spelled-out compound number 'thirty first'.
            test.rst:4:15:Nordic.CompoundNumbers:Hyphenate the spelled-out compound number 'twenty five'.
            test.rst:4:43:Nordic.CompoundNumbers:Hyphenate the spelled-out compound number 'thirty first'.
            """
