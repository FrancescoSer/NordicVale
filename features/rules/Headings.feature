Feature: Headings

    Scenario: Sentence-style capitalization in headings
        When I test "Headings"
        Then the output should contain exactly:
            """
            test.md:1:3:Nordic.Headings:'This is a Heading' should use sentence-style capitalization.
            test.md:13:4:Nordic.Headings:'Install Docker' should use sentence-style capitalization.
            test.md:17:4:Nordic.Headings:'Test: modern documentation management' should use sentence-style capitalization.
            test.rst:1:1:Nordic.Headings:'This is a Heading' should use sentence-style capitalization.
            test.rst:19:1:Nordic.Headings:'Install Docker' should use sentence-style capitalization.
            test.rst:25:1:Nordic.Headings:'Test: modern documentation management' should use sentence-style capitalization.
            """
