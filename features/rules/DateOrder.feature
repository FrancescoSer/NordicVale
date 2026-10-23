Feature: DateOrder

    Scenario: DateOrder in Markdown and reStructuredText
        When I test "DateOrder"
        Then the output should contain exactly:
            """
            test.md:3:14:Nordic.DateOrder:Spell out the name of the month in '6/12/2017', unless the format is specified for the audience or shown in the UI.
            test.md:5:15:Nordic.DateOrder:Spell out the name of the month in '12/1/17', unless the format is specified for the audience or shown in the UI.
            test.rst:4:14:Nordic.DateOrder:Spell out the name of the month in '6/12/2017', unless the format is specified for the audience or shown in the UI.
            test.rst:6:15:Nordic.DateOrder:Spell out the name of the month in '12/1/17', unless the format is specified for the audience or shown in the UI.
            """
