Feature: AltText

    Scenario: AltText
        When I test "AltText"
        Then the output should contain exactly:
            """
            test.md:3:3:Nordic.AltText:Do not start alt text with 'Image of'. Describe the content and function of the image.
            test.md:5:3:Nordic.AltText:Do not start alt text with 'Screenshot of'. Describe the content and function of the image.
            test.md:7:3:Nordic.AltText:Do not start alt text with 'Diagram'. Describe the content and function of the image.
            test.rst:5:10:Nordic.AltText:Do not start alt text with 'Image of'. Describe the content and function of the image.
            test.rst:8:10:Nordic.AltText:Do not start alt text with 'Screenshot of'. Describe the content and function of the image.
            test.rst:11:10:Nordic.AltText:Do not start alt text with 'Diagram'. Describe the content and function of the image.
            """
