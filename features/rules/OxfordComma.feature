Feature: OxfordComma

    Scenario: Series without the Oxford comma
        When I test "OxfordComma"
        Then the output should contain exactly:
            """
            test.md:3:8:Nordic.OxfordComma:Use a comma before the conjunction in the series 'red, blue and orange'.
            test.md:5:19:Nordic.OxfordComma:Use a comma before the conjunction in the series 'a hard drive, an external drive, a USB stick or OneDrive'.
            test.rst:4:8:Nordic.OxfordComma:Use a comma before the conjunction in the series 'red, blue and orange'.
            test.rst:6:19:Nordic.OxfordComma:Use a comma before the conjunction in the series 'a hard drive, an external drive, a USB stick or OneDrive'.
            """
