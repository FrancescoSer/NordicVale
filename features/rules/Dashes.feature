Feature: Dashes

    Scenario: Spaces around dashes
        When I test "Dashes"
        Then the output should contain exactly:
            """
            test.md:3:36:Nordic.Dashes:Remove the spaces around the dash in ' — '.
            test.md:3:66:Nordic.Dashes:Remove the spaces around the dash in ' — '.
            test.md:5:40:Nordic.Dashes:Remove the spaces around the dash in '— '.
            test.md:9:15:Nordic.Dashes:Remove the spaces around the dash in ' – '.
            test.rst:4:36:Nordic.Dashes:Remove the spaces around the dash in ' — '.
            test.rst:4:66:Nordic.Dashes:Remove the spaces around the dash in ' — '.
            test.rst:6:40:Nordic.Dashes:Remove the spaces around the dash in '— '.
            test.rst:10:15:Nordic.Dashes:Remove the spaces around the dash in ' – '.
            """
