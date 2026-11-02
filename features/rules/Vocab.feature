Feature: Vocab

    Scenario: Words to verify
        When I test "Vocab"
        Then the output should contain exactly:
            """
            test.md:3:14:Nordic.Vocab:Verify your use of 'above'. This word is correct only in some contexts.
            test.md:3:34:Nordic.Vocab:Verify your use of 'accessible'. This word is correct only in some contexts.
            test.md:3:58:Nordic.Vocab:Verify your use of 'actionable'. This word is correct only in some contexts.
            test.md:5:15:Nordic.Vocab:Verify your use of 'against'. This word is correct only in some contexts.
            test.md:5:41:Nordic.Vocab:Verify your use of 'alarm'. This word is correct only in some contexts.
            test.md:5:63:Nordic.Vocab:Verify your use of 'alert'. This word is correct only in some contexts.
            test.md:5:77:Nordic.Vocab:Verify your use of 'alias'. This word is correct only in some contexts.
            test.md:7:6:Nordic.Vocab:Verify your use of 'and/or'. This word is correct only in some contexts.
            test.md:7:35:Nordic.Vocab:Verify your use of 'as well as'. This word is correct only in some contexts.
            test.md:7:52:Nordic.Vocab:Verify your use of 'assure'. This word is correct only in some contexts.
            test.md:9:1:Nordic.Vocab:Verify your use of 'Author'. This word is correct only in some contexts.
            test.md:9:20:Nordic.Vocab:Verify your use of 'avg'. This word is correct only in some contexts.
            test.md:9:46:Nordic.Vocab:Verify your use of 'beta'. This word is correct only in some contexts.
            test.md:11:26:Nordic.Vocab:Verify your use of 'he'. This word is correct only in some contexts.
            test.md:11:44:Nordic.Vocab:Verify your use of 'She'. This word is correct only in some contexts.
            test.md:11:57:Nordic.Vocab:Verify your use of 'Insure'. This word is correct only in some contexts.
            test.rst:4:14:Nordic.Vocab:Verify your use of 'above'. This word is correct only in some contexts.
            test.rst:4:34:Nordic.Vocab:Verify your use of 'accessible'. This word is correct only in some contexts.
            test.rst:4:58:Nordic.Vocab:Verify your use of 'actionable'. This word is correct only in some contexts.
            test.rst:6:15:Nordic.Vocab:Verify your use of 'against'. This word is correct only in some contexts.
            test.rst:6:41:Nordic.Vocab:Verify your use of 'alarm'. This word is correct only in some contexts.
            test.rst:6:63:Nordic.Vocab:Verify your use of 'alert'. This word is correct only in some contexts.
            test.rst:6:77:Nordic.Vocab:Verify your use of 'alias'. This word is correct only in some contexts.
            test.rst:8:6:Nordic.Vocab:Verify your use of 'and/or'. This word is correct only in some contexts.
            test.rst:8:35:Nordic.Vocab:Verify your use of 'as well as'. This word is correct only in some contexts.
            test.rst:8:52:Nordic.Vocab:Verify your use of 'assure'. This word is correct only in some contexts.
            test.rst:10:1:Nordic.Vocab:Verify your use of 'Author'. This word is correct only in some contexts.
            test.rst:10:20:Nordic.Vocab:Verify your use of 'avg'. This word is correct only in some contexts.
            test.rst:10:46:Nordic.Vocab:Verify your use of 'beta'. This word is correct only in some contexts.
            test.rst:12:26:Nordic.Vocab:Verify your use of 'he'. This word is correct only in some contexts.
            test.rst:12:44:Nordic.Vocab:Verify your use of 'She'. This word is correct only in some contexts.
            test.rst:12:57:Nordic.Vocab:Verify your use of 'Insure'. This word is correct only in some contexts.
            """
