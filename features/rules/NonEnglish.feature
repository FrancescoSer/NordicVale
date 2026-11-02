Feature: NonEnglish

    Scenario: NonEnglish
        When I test "NonEnglish"
        Then the output should contain exactly:
            """
            test.md:3:19:Nordic.NonEnglish:Avoid the non-English phrase 'de facto'. Use a common English word.
            test.md:5:11:Nordic.NonEnglish:Avoid the non-English phrase 'ad hoc'. Use a common English word.
            test.md:5:31:Nordic.NonEnglish:Avoid the non-English phrase 'vice versa'. Use a common English word.
            test.md:7:5:Nordic.NonEnglish:Avoid the non-English phrase 'status quo'. Use a common English word.
            test.md:7:38:Nordic.NonEnglish:Avoid the non-English phrase 'in situ'. Use a common English word.
            test.rst:4:19:Nordic.NonEnglish:Avoid the non-English phrase 'de facto'. Use a common English word.
            test.rst:6:11:Nordic.NonEnglish:Avoid the non-English phrase 'ad hoc'. Use a common English word.
            test.rst:6:31:Nordic.NonEnglish:Avoid the non-English phrase 'vice versa'. Use a common English word.
            test.rst:8:5:Nordic.NonEnglish:Avoid the non-English phrase 'status quo'. Use a common English word.
            test.rst:8:38:Nordic.NonEnglish:Avoid the non-English phrase 'in situ'. Use a common English word.
            """
