Feature: URLFormat

    Scenario: URL grammar and link text
        When I test "URLFormat"
        Then the output should contain exactly:
            """
            test.md:3:11:Nordic.URLFormat:Use 'URL of' instead of 'URL for'.
            test.rst:4:11:Nordic.URLFormat:Use 'URL of' instead of 'URL for'.
            """
