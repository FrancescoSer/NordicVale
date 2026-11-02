Feature: NumberWithUnit

    Scenario: NumberWithUnit
        When I test "NumberWithUnit"
        Then the output should contain exactly:
            """
            test.md:3:7:Nordic.NumberWithUnit:Use a numeral with a unit symbol, not 'three V'.
            test.md:3:35:Nordic.NumberWithUnit:Use a numeral with a unit symbol, not 'seven ms'.
            test.md:5:15:Nordic.NumberWithUnit:Use a numeral with a unit symbol, not 'two kB'.
            test.md:5:39:Nordic.NumberWithUnit:Use a numeral with a unit symbol, not 'ten Mbps'.
            test.rst:4:7:Nordic.NumberWithUnit:Use a numeral with a unit symbol, not 'three V'.
            test.rst:4:35:Nordic.NumberWithUnit:Use a numeral with a unit symbol, not 'seven ms'.
            test.rst:6:15:Nordic.NumberWithUnit:Use a numeral with a unit symbol, not 'two kB'.
            test.rst:6:39:Nordic.NumberWithUnit:Use a numeral with a unit symbol, not 'ten Mbps'.
            """
