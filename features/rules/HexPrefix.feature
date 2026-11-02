Feature: HexPrefix

    Scenario: HexPrefix
        When I test "HexPrefix"
        Then the output should contain exactly:
            """
            test.md:3:7:Nordic.HexPrefix:Use '0x4000' instead of '0X4000'. Keep the 'x' lowercase.
            test.md:3:41:Nordic.HexPrefix:Use 'x86' instead of 'X86'. Keep the 'x' lowercase.
            test.md:3:48:Nordic.HexPrefix:Use 'x64' instead of 'X64'. Keep the 'x' lowercase.
            test.rst:4:7:Nordic.HexPrefix:Use '0x4000' instead of '0X4000'. Keep the 'x' lowercase.
            test.rst:4:41:Nordic.HexPrefix:Use 'x86' instead of 'X86'. Keep the 'x' lowercase.
            test.rst:4:48:Nordic.HexPrefix:Use 'x64' instead of 'X64'. Keep the 'x' lowercase.
            """
