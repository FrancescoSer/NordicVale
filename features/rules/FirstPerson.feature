Feature: FirstPerson

    Scenario: First-person singular
        When I test "FirstPerson"
        Then the output should contain exactly:
            """
            test.md:3:1:Nordic.FirstPerson:Use first person (such as 'I') sparingly.
            test.md:3:14:Nordic.FirstPerson:Use first person (such as 'my') sparingly.
            test.md:5:7:Nordic.FirstPerson:Use first person (such as 'me') sparingly.
            test.md:5:38:Nordic.FirstPerson:Use first person (such as 'I’m') sparingly.
            test.md:5:49:Nordic.FirstPerson:Use first person (such as 'I'll') sparingly.
            test.md:7:7:Nordic.FirstPerson:Use first person (such as 'I') sparingly.
            test.md:9:1:Nordic.FirstPerson:Use first person (such as 'My') sparingly.
            test.rst:4:1:Nordic.FirstPerson:Use first person (such as 'I') sparingly.
            test.rst:4:14:Nordic.FirstPerson:Use first person (such as 'my') sparingly.
            test.rst:6:7:Nordic.FirstPerson:Use first person (such as 'me') sparingly.
            test.rst:6:38:Nordic.FirstPerson:Use first person (such as 'I’m') sparingly.
            test.rst:6:49:Nordic.FirstPerson:Use first person (such as 'I'll') sparingly.
            test.rst:8:7:Nordic.FirstPerson:Use first person (such as 'I') sparingly.
            test.rst:10:1:Nordic.FirstPerson:Use first person (such as 'My') sparingly.
            """
