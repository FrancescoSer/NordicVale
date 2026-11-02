Feature: Idioms

    Scenario: Idioms
        When I test "Idioms"
        Then the output should contain exactly:
            """
            test.md:3:15:Nordic.Idioms:Avoid the idiom 'up and running'. Use 'operational' or 'running'.
            test.md:5:4:Nordic.Idioms:Avoid the idiom 'boils down to'. Use 'reduces to' or 'essentially means'.
            test.md:5:30:Nordic.Idioms:Avoid the idiom 'Under the hood'. Use 'internally' or 'in the implementation'.
            test.md:7:6:Nordic.Idioms:Avoid the idiom 'rule of thumb'. Use 'general guideline'.
            test.md:7:28:Nordic.Idioms:Avoid the idiom 'heads-up'. Use 'note' or 'important'.
            test.md:7:41:Nordic.Idioms:Avoid the idiom 'low-hanging fruit'. Use 'easily achievable improvements'.
            test.rst:4:15:Nordic.Idioms:Avoid the idiom 'up and running'. Use 'operational' or 'running'.
            test.rst:6:4:Nordic.Idioms:Avoid the idiom 'boils down to'. Use 'reduces to' or 'essentially means'.
            test.rst:6:30:Nordic.Idioms:Avoid the idiom 'Under the hood'. Use 'internally' or 'in the implementation'.
            test.rst:8:6:Nordic.Idioms:Avoid the idiom 'rule of thumb'. Use 'general guideline'.
            test.rst:8:28:Nordic.Idioms:Avoid the idiom 'heads-up'. Use 'note' or 'important'.
            test.rst:8:41:Nordic.Idioms:Avoid the idiom 'low-hanging fruit'. Use 'easily achievable improvements'.
            """
