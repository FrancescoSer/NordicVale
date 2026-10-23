Feature: Accessibility

    Scenario: Language that defines people by disability
        When I test "Accessibility"
        Then the output should contain exactly:
            """
            test.md:3:10:Nordic.Accessibility:Do not use language (such as 'suffers from') that defines people by their disability.
            test.md:5:9:Nordic.Accessibility:Do not use language (such as 'suffering from') that defines people by their disability.
            test.md:7:32:Nordic.Accessibility:Do not use language (such as 'disabled people') that defines people by their disability.
            test.md:9:17:Nordic.Accessibility:Do not use language (such as 'crippled') that defines people by their disability.
            test.md:11:18:Nordic.Accessibility:Do not use language (such as 'hearing-impaired') that defines people by their disability.
            test.md:11:39:Nordic.Accessibility:Do not use language (such as 'visually impaired') that defines people by their disability.
            test.md:13:27:Nordic.Accessibility:Do not use language (such as 'mute person') that defines people by their disability.
            test.rst:4:10:Nordic.Accessibility:Do not use language (such as 'suffers from') that defines people by their disability.
            test.rst:6:9:Nordic.Accessibility:Do not use language (such as 'suffering from') that defines people by their disability.
            test.rst:8:32:Nordic.Accessibility:Do not use language (such as 'disabled people') that defines people by their disability.
            test.rst:10:17:Nordic.Accessibility:Do not use language (such as 'crippled') that defines people by their disability.
            test.rst:12:18:Nordic.Accessibility:Do not use language (such as 'hearing-impaired') that defines people by their disability.
            test.rst:12:39:Nordic.Accessibility:Do not use language (such as 'visually impaired') that defines people by their disability.
            test.rst:14:27:Nordic.Accessibility:Do not use language (such as 'mute person') that defines people by their disability.
            """
