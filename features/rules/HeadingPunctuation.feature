Feature: HeadingPunctuation

    Scenario: End punctuation in headings
        When I test "HeadingPunctuation"
        Then the output should contain exactly:
            """
            test.md:1:14:Nordic.HeadingPunctuation:Do not end a heading with '.'.
            test.md:3:29:Nordic.HeadingPunctuation:Do not end a heading with '?'.
            test.md:5:28:Nordic.HeadingPunctuation:Do not end a heading with '.'.
            test.md:7:20:Nordic.HeadingPunctuation:Do not end a heading with '.'.
            test.md:9:28:Nordic.HeadingPunctuation:Do not end a heading with ':'.
            test.md:11:21:Nordic.HeadingPunctuation:Do not end a heading with ';'.
            test.rst:1:12:Nordic.HeadingPunctuation:Do not end a heading with '.'.
            test.rst:4:26:Nordic.HeadingPunctuation:Do not end a heading with '?'.
            test.rst:7:25:Nordic.HeadingPunctuation:Do not end a heading with '.'.
            test.rst:10:17:Nordic.HeadingPunctuation:Do not end a heading with '.'.
            test.rst:13:25:Nordic.HeadingPunctuation:Do not end a heading with ':'.
            test.rst:16:18:Nordic.HeadingPunctuation:Do not end a heading with ';'.
            """
