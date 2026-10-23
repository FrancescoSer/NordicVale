Feature: SentenceLength

    Scenario: SentenceLength in Markdown and reStructuredText
        When I test "SentenceLength"
        Then the output should contain exactly:
            """
            test.md:3:1:Nordic.SentenceLength:Keep sentences under 25 words.
            test.md:9:1:Nordic.SentenceLength:Keep sentences under 25 words.
            test.md:11:1:Nordic.SentenceLength:Keep sentences under 25 words.
            test.rst:4:1:Nordic.SentenceLength:Keep sentences under 25 words.
            test.rst:10:1:Nordic.SentenceLength:Keep sentences under 25 words.
            test.rst:12:1:Nordic.SentenceLength:Keep sentences under 25 words.
            """
