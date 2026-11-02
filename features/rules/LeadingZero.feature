Feature: LeadingZero

    Scenario: LeadingZero
        When I test "LeadingZero"
        Then the output should contain exactly:
            """
            test.md:3:14:Nordic.LeadingZero:Add a leading zero before the decimal point in '.5'.
            test.md:3:39:Nordic.LeadingZero:Add a leading zero before the decimal point in '.25'.
            test.rst:4:14:Nordic.LeadingZero:Add a leading zero before the decimal point in '.5'.
            test.rst:4:39:Nordic.LeadingZero:Add a leading zero before the decimal point in '.25'.
            """
