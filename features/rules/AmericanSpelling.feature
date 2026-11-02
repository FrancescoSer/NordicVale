Feature: AmericanSpelling

    Scenario: AmericanSpelling
        When I test "AmericanSpelling"
        Then the output should contain exactly:
            """
            test.md:3:10:Nordic.AmericanSpelling:Use the American spelling 'license' instead of 'licence'.
            test.md:3:23:Nordic.AmericanSpelling:Use the American spelling 'color' instead of 'colour'.
            test.md:5:5:Nordic.AmericanSpelling:Use the American spelling 'behavior' instead of 'behaviour'.
            test.md:5:18:Nordic.AmericanSpelling:Use the American spelling 'optimized' instead of 'optimised'.
            test.md:5:29:Nordic.AmericanSpelling:Use the American spelling 'initialize' instead of 'Initialise'.
            test.md:5:44:Nordic.AmericanSpelling:Use the American spelling 'center' instead of 'centre'.
            test.md:7:1:Nordic.AmericanSpelling:Use the American spelling 'canceled' instead of 'Cancelled'.
            test.md:7:21:Nordic.AmericanSpelling:Use the American spelling 'labeled' instead of 'labelled'.
            test.md:7:47:Nordic.AmericanSpelling:Use the American spelling 'analyze' instead of 'Analyse'.
            test.md:7:59:Nordic.AmericanSpelling:Use the American spelling 'gray' instead of 'grey'.
            test.rst:4:10:Nordic.AmericanSpelling:Use the American spelling 'license' instead of 'licence'.
            test.rst:4:23:Nordic.AmericanSpelling:Use the American spelling 'color' instead of 'colour'.
            test.rst:6:5:Nordic.AmericanSpelling:Use the American spelling 'behavior' instead of 'behaviour'.
            test.rst:6:18:Nordic.AmericanSpelling:Use the American spelling 'optimized' instead of 'optimised'.
            test.rst:6:29:Nordic.AmericanSpelling:Use the American spelling 'initialize' instead of 'Initialise'.
            test.rst:6:44:Nordic.AmericanSpelling:Use the American spelling 'center' instead of 'centre'.
            test.rst:8:1:Nordic.AmericanSpelling:Use the American spelling 'canceled' instead of 'Cancelled'.
            test.rst:8:21:Nordic.AmericanSpelling:Use the American spelling 'labeled' instead of 'labelled'.
            test.rst:8:47:Nordic.AmericanSpelling:Use the American spelling 'analyze' instead of 'Analyse'.
            test.rst:8:59:Nordic.AmericanSpelling:Use the American spelling 'gray' instead of 'grey'.
            """
