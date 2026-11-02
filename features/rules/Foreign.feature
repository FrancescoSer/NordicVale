Feature: Foreign

    Scenario: Latin abbreviations
        When I test "Foreign"
        Then the output should contain exactly:
            """
            test.md:3:29:Nordic.Foreign:Use 'for example' instead of 'e.g.'.
            test.md:5:19:Nordic.Foreign:Use 'that is' instead of 'i.e.'.
            test.md:7:24:Nordic.Foreign:Use 'namely' instead of 'viz.'.
            test.md:7:37:Nordic.Foreign:Use 'therefore' instead of 'ergo'.
            test.md:9:7:Nordic.Foreign:Use 'and others' instead of 'et al.'.
            test.md:11:16:Nordic.Foreign:Use 'versus' instead of 'vs.'.
            test.md:11:38:Nordic.Foreign:Use 'versus' instead of 'vs'.
            test.rst:4:29:Nordic.Foreign:Use 'for example' instead of 'e.g.'.
            test.rst:6:19:Nordic.Foreign:Use 'that is' instead of 'i.e.'.
            test.rst:8:24:Nordic.Foreign:Use 'namely' instead of 'viz.'.
            test.rst:8:37:Nordic.Foreign:Use 'therefore' instead of 'ergo'.
            test.rst:10:7:Nordic.Foreign:Use 'and others' instead of 'et al.'.
            test.rst:12:16:Nordic.Foreign:Use 'versus' instead of 'vs.'.
            test.rst:12:38:Nordic.Foreign:Use 'versus' instead of 'vs'.
            """
