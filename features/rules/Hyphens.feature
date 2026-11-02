Feature: Hyphens

    Scenario: Unneeded hyphens
        When I test "Hyphens"
        Then the output should contain exactly:
            """
            test.md:3:4:Nordic.Hyphens:'easily-remembered' does not need a hyphen.
            test.md:9:16:Nordic.Hyphens:'pre-defined' does not need a hyphen.
            test.md:9:49:Nordic.Hyphens:'Auto-scale' does not need a hyphen.
            test.md:11:5:Nordic.Hyphens:'non-linear' does not need a hyphen.
            test.md:11:29:Nordic.Hyphens:'multi-core' does not need a hyphen.
            test.md:19:17:Nordic.Hyphens:'10-kΩ' does not need a hyphen.
            test.md:19:48:Nordic.Hyphens:'1.8-V' does not need a hyphen.
            test.rst:4:4:Nordic.Hyphens:'easily-remembered' does not need a hyphen.
            test.rst:10:16:Nordic.Hyphens:'pre-defined' does not need a hyphen.
            test.rst:10:49:Nordic.Hyphens:'Auto-scale' does not need a hyphen.
            test.rst:12:5:Nordic.Hyphens:'non-linear' does not need a hyphen.
            test.rst:12:29:Nordic.Hyphens:'multi-core' does not need a hyphen.
            test.rst:20:17:Nordic.Hyphens:'10-kΩ' does not need a hyphen.
            test.rst:20:48:Nordic.Hyphens:'1.8-V' does not need a hyphen.
            """
