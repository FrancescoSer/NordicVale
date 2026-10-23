Feature: Quotes

    Scenario: Commas and periods outside quotation marks
        When I test "Quotes"
        Then the output should contain exactly:
            """
            test.md:3:10:Nordic.Quotes:Put commas and periods inside the quotation marks.
            test.md:5:5:Nordic.Quotes:Put commas and periods inside the quotation marks.
            test.rst:4:10:Nordic.Quotes:Put commas and periods inside the quotation marks.
            test.rst:6:5:Nordic.Quotes:Put commas and periods inside the quotation marks.
            """
