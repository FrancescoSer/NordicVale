Feature: Apostrophes

    Scenario: Apostrophes
        When I test "Apostrophes"
        Then the output should contain exactly:
            """
            test.md:3:5:Nordic.Apostrophes:Do not use an apostrophe in '2010's'.
            test.md:3:38:Nordic.Apostrophes:Do not use an apostrophe in 'your's'.
            test.md:3:48:Nordic.Apostrophes:Do not use an apostrophe in 'their's'.
            test.md:5:11:Nordic.Apostrophes:Do not use an apostrophe in 'several GPIO's'.
            test.md:5:30:Nordic.Apostrophes:Do not use an apostrophe in 'two SDK's'.
            test.rst:4:5:Nordic.Apostrophes:Do not use an apostrophe in '2010's'.
            test.rst:4:38:Nordic.Apostrophes:Do not use an apostrophe in 'your's'.
            test.rst:4:48:Nordic.Apostrophes:Do not use an apostrophe in 'their's'.
            test.rst:6:11:Nordic.Apostrophes:Do not use an apostrophe in 'several GPIO's'.
            test.rst:6:30:Nordic.Apostrophes:Do not use an apostrophe in 'two SDK's'.
            """
