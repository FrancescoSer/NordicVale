Feature: Negative

    Scenario: Negative in Markdown and reStructuredText
        When I test "Negative"
        Then the output should contain exactly:
            """
            test.md:3:16:Nordic.Negative:Form a negative number with an en dash, not a hyphen.
            test.md:3:33:Nordic.Negative:Form a negative number with an en dash, not a hyphen.
            test.md:5:1:Nordic.Negative:Form a negative number with an en dash, not a hyphen.
            test.md:7:19:Nordic.Negative:Form a negative number with an en dash, not a hyphen.
            test.rst:4:16:Nordic.Negative:Form a negative number with an en dash, not a hyphen.
            test.rst:4:33:Nordic.Negative:Form a negative number with an en dash, not a hyphen.
            test.rst:6:1:Nordic.Negative:Form a negative number with an en dash, not a hyphen.
            test.rst:8:19:Nordic.Negative:Form a negative number with an en dash, not a hyphen.
            """
