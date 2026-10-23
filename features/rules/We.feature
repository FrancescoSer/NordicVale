Feature: We

    Scenario: First-person plural
        When I test "We"
        Then the output should contain exactly:
            """
            test.md:3:1:Nordic.We:Try to avoid using first-person plural like 'We'.
            test.md:3:26:Nordic.We:Try to avoid using first-person plural like 'our'.
            test.md:5:9:Nordic.We:Try to avoid using first-person plural like 'us'.
            test.md:5:13:Nordic.We:Try to avoid using first-person plural like 'We’re'.
            test.md:5:29:Nordic.We:Try to avoid using first-person plural like 'we'll'.
            test.md:7:1:Nordic.We:Try to avoid using first-person plural like 'Let's'.
            test.md:9:1:Nordic.We:Try to avoid using first-person plural like 'Ours'.
            test.md:9:23:Nordic.We:Try to avoid using first-person plural like 'Us'.
            test.rst:4:1:Nordic.We:Try to avoid using first-person plural like 'We'.
            test.rst:4:26:Nordic.We:Try to avoid using first-person plural like 'our'.
            test.rst:6:9:Nordic.We:Try to avoid using first-person plural like 'us'.
            test.rst:6:13:Nordic.We:Try to avoid using first-person plural like 'We’re'.
            test.rst:6:29:Nordic.We:Try to avoid using first-person plural like 'we'll'.
            test.rst:8:1:Nordic.We:Try to avoid using first-person plural like 'Let's'.
            test.rst:10:1:Nordic.We:Try to avoid using first-person plural like 'Ours'.
            test.rst:10:23:Nordic.We:Try to avoid using first-person plural like 'Us'.
            """
