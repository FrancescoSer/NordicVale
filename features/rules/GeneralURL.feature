Feature: GeneralURL

    Scenario: URL for a general audience
        When I test "GeneralURL"
        Then the output should contain exactly:
            """
            test.md:3:11:Nordic.GeneralURL:For a general audience, use 'address' rather than 'URL'.
            test.rst:4:11:Nordic.GeneralURL:For a general audience, use 'address' rather than 'URL'.
            """
