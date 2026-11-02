Feature: FromRange

    Scenario: FromRange
        When I test "FromRange"
        Then the output should contain exactly:
            """
            test.md:3:13:Nordic.FromRange:Do not use 'from' or 'between' before a range with an en dash ('from 1–10'). Use 'from ... to', or the dash alone.
            test.md:3:26:Nordic.FromRange:Do not use 'from' or 'between' before a range with an en dash ('between 3-5'). Use 'from ... to', or the dash alone.
            test.md:7:15:Nordic.FromRange:Do not use 'from' or 'between' before a range with an en dash ('from -40–85'). Use 'from ... to', or the dash alone.
            test.rst:4:13:Nordic.FromRange:Do not use 'from' or 'between' before a range with an en dash ('from 1–10'). Use 'from ... to', or the dash alone.
            test.rst:4:26:Nordic.FromRange:Do not use 'from' or 'between' before a range with an en dash ('between 3-5'). Use 'from ... to', or the dash alone.
            test.rst:8:15:Nordic.FromRange:Do not use 'from' or 'between' before a range with an en dash ('from -40–85'). Use 'from ... to', or the dash alone.
            """
