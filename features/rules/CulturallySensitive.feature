Feature: CulturallySensitive

    Scenario: CulturallySensitive
        When I test "CulturallySensitive"
        Then the output should contain exactly:
            """
            test.md:3:16:Nordic.CulturallySensitive:Use 'master/subordinate' instead of 'master/slave'.
            test.md:5:25:Nordic.CulturallySensitive:Use 'perimeter network' instead of 'demilitarized zone'.
            test.md:5:45:Nordic.CulturallySensitive:Use 'perimeter network' instead of 'DMZ'.
            test.md:7:17:Nordic.CulturallySensitive:Use 'stops responding' instead of 'hangs'.
            test.md:9:16:Nordic.CulturallySensitive:Use 'stop responding' instead of 'hang'.
            test.rst:4:16:Nordic.CulturallySensitive:Use 'master/subordinate' instead of 'master/slave'.
            test.rst:6:25:Nordic.CulturallySensitive:Use 'perimeter network' instead of 'demilitarized zone'.
            test.rst:6:45:Nordic.CulturallySensitive:Use 'perimeter network' instead of 'DMZ'.
            test.rst:8:17:Nordic.CulturallySensitive:Use 'stops responding' instead of 'hangs'.
            test.rst:10:16:Nordic.CulturallySensitive:Use 'stop responding' instead of 'hang'.
            """
