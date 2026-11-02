Feature: Gender

    Scenario: Gendered pronoun constructions
        When I test "Gender"
        Then the output should contain exactly:
            """
            test.md:3:6:Nordic.Gender:Do not use 'he/she'.
            test.md:3:31:Nordic.Gender:Do not use 's/he'.
            test.md:5:18:Nordic.Gender:Do not use 'his or her'.
            test.md:5:42:Nordic.Gender:Do not use '(s)he'.
            test.md:5:56:Nordic.Gender:Do not use 'him/her'.
            test.md:7:1:Nordic.Gender:Do not use 'He or she'.
            test.md:7:20:Nordic.Gender:Do not use 'his/her'.
            test.rst:4:6:Nordic.Gender:Do not use 'he/she'.
            test.rst:4:31:Nordic.Gender:Do not use 's/he'.
            test.rst:6:18:Nordic.Gender:Do not use 'his or her'.
            test.rst:6:42:Nordic.Gender:Do not use '(s)he'.
            test.rst:6:56:Nordic.Gender:Do not use 'him/her'.
            test.rst:8:1:Nordic.Gender:Do not use 'He or she'.
            test.rst:8:20:Nordic.Gender:Do not use 'his/her'.
            """
