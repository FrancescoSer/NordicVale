Feature: GenderBias

    Scenario: Gender-neutral alternatives
        When I test "GenderBias"
        Then the output should contain exactly:
            """
            test.md:3:5:Nordic.GenderBias:Use 'chair or moderator' instead of 'chairman'.
            test.md:5:5:Nordic.GenderBias:Use 'sales representative(s)' instead of 'salesman'.
            test.md:5:19:Nordic.GenderBias:Use 'synthetic or manufactured' instead of 'manmade'.
            test.md:5:38:Nordic.GenderBias:Use 'synthetic or manufactured' instead of 'man-made'.
            test.md:7:1:Nordic.GenderBias:Use 'humanity, people, or humankind' instead of 'Mankind'.
            test.md:7:20:Nordic.GenderBias:Use 'workforce, staff, or personnel' instead of 'manpower'.
            test.md:9:5:Nordic.GenderBias:Use 'concierge(s)' instead of 'doorman'.
            test.md:9:24:Nordic.GenderBias:Use 'camera operator(s)' instead of 'cameraman'.
            test.md:11:3:Nordic.GenderBias:Use 'flight attendant(s)' instead of 'stewardess'.
            test.rst:4:5:Nordic.GenderBias:Use 'chair or moderator' instead of 'chairman'.
            test.rst:6:5:Nordic.GenderBias:Use 'sales representative(s)' instead of 'salesman'.
            test.rst:6:19:Nordic.GenderBias:Use 'synthetic or manufactured' instead of 'manmade'.
            test.rst:6:38:Nordic.GenderBias:Use 'synthetic or manufactured' instead of 'man-made'.
            test.rst:8:1:Nordic.GenderBias:Use 'humanity, people, or humankind' instead of 'Mankind'.
            test.rst:8:20:Nordic.GenderBias:Use 'workforce, staff, or personnel' instead of 'manpower'.
            test.rst:10:5:Nordic.GenderBias:Use 'concierge(s)' instead of 'doorman'.
            test.rst:10:24:Nordic.GenderBias:Use 'camera operator(s)' instead of 'cameraman'.
            test.rst:12:3:Nordic.GenderBias:Use 'flight attendant(s)' instead of 'stewardess'.
            """
