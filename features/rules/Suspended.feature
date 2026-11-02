Feature: Suspended

    Scenario: Suspended compound modifiers
        When I test "Suspended"
        Then the output should contain exactly:
            """
            test.md:3:5:Nordic.Suspended:Do not use the suspended form '8- and 7-'. Write each compound in full, for example '8-bit and 7-bit'.
            test.md:5:5:Nordic.Suspended:Do not use the suspended form 'left- or right-'. Write each compound in full, for example '8-bit and 7-bit'.
            test.md:7:5:Nordic.Suspended:Do not use the suspended form '16- to 32-'. Write each compound in full, for example '8-bit and 7-bit'.
            test.rst:4:5:Nordic.Suspended:Do not use the suspended form '8- and 7-'. Write each compound in full, for example '8-bit and 7-bit'.
            test.rst:6:5:Nordic.Suspended:Do not use the suspended form 'left- or right-'. Write each compound in full, for example '8-bit and 7-bit'.
            test.rst:8:5:Nordic.Suspended:Do not use the suspended form '16- to 32-'. Write each compound in full, for example '8-bit and 7-bit'.
            """
