Feature: HeadingVersus

    Scenario: HeadingVersus
        When I test "HeadingVersus"
        Then the output should contain exactly:
            """
            test.md:3:11:Nordic.HeadingVersus:Use 'vs.' instead of 'versus' in headings.
            test.md:5:11:Nordic.HeadingVersus:Use 'vs.' instead of 'v.' in headings.
            test.md:9:19:Nordic.HeadingVersus:Use 'vs.' instead of 'vs' in headings.
            test.rst:4:8:Nordic.HeadingVersus:Use 'vs.' instead of 'versus' in headings.
            test.rst:7:8:Nordic.HeadingVersus:Use 'vs.' instead of 'v.' in headings.
            test.rst:13:16:Nordic.HeadingVersus:Use 'vs.' instead of 'vs' in headings.
            """
