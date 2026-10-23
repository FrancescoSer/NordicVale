Feature: Ordinal

    Scenario: Ordinal in Markdown and reStructuredText
        When I test "Ordinal"
        Then the output should contain exactly:
            """
            test.md:3:1:Nordic.Ordinal:Spell out ordinal numbers and do not add -ly. Use a word such as 'first', not 'Firstly'.
            test.md:3:24:Nordic.Ordinal:Spell out ordinal numbers and do not add -ly. Use a word such as 'first', not 'Secondly'.
            test.md:3:44:Nordic.Ordinal:Spell out ordinal numbers and do not add -ly. Use a word such as 'first', not 'Thirdly'.
            test.md:5:13:Nordic.Ordinal:Spell out ordinal numbers and do not add -ly. Use a word such as 'first', not '1st'.
            test.md:5:26:Nordic.Ordinal:Spell out ordinal numbers and do not add -ly. Use a word such as 'first', not '2nd'.
            test.md:5:39:Nordic.Ordinal:Spell out ordinal numbers and do not add -ly. Use a word such as 'first', not '3rd'.
            test.md:5:56:Nordic.Ordinal:Spell out ordinal numbers and do not add -ly. Use a word such as 'first', not '21st'.
            test.rst:4:1:Nordic.Ordinal:Spell out ordinal numbers and do not add -ly. Use a word such as 'first', not 'Firstly'.
            test.rst:4:24:Nordic.Ordinal:Spell out ordinal numbers and do not add -ly. Use a word such as 'first', not 'Secondly'.
            test.rst:4:44:Nordic.Ordinal:Spell out ordinal numbers and do not add -ly. Use a word such as 'first', not 'Thirdly'.
            test.rst:6:13:Nordic.Ordinal:Spell out ordinal numbers and do not add -ly. Use a word such as 'first', not '1st'.
            test.rst:6:26:Nordic.Ordinal:Spell out ordinal numbers and do not add -ly. Use a word such as 'first', not '2nd'.
            test.rst:6:39:Nordic.Ordinal:Spell out ordinal numbers and do not add -ly. Use a word such as 'first', not '3rd'.
            test.rst:6:56:Nordic.Ordinal:Spell out ordinal numbers and do not add -ly. Use a word such as 'first', not '21st'.
            """
