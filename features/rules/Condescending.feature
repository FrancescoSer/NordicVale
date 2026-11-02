Feature: Condescending

    Scenario: Condescending
        When I test "Condescending"
        Then the output should contain exactly:
            """
            test.md:3:1:Nordic.Condescending:Do not use condescending language such as 'Of course'.
            test.md:3:30:Nordic.Condescending:Do not use condescending language such as 'As you know'.
            test.md:5:1:Nordic.Condescending:Do not use condescending language such as 'It goes without saying'.
            test.md:5:29:Nordic.Condescending:Do not use condescending language such as 'anyone can'.
            test.md:5:49:Nordic.Condescending:Do not use condescending language such as 'Needless to say'.
            test.md:5:66:Nordic.Condescending:Do not use condescending language such as 'do not worry'.
            test.md:7:1:Nordic.Condescending:Do not use condescending language such as 'Don't worry'.
            test.rst:4:1:Nordic.Condescending:Do not use condescending language such as 'Of course'.
            test.rst:4:30:Nordic.Condescending:Do not use condescending language such as 'As you know'.
            test.rst:6:1:Nordic.Condescending:Do not use condescending language such as 'It goes without saying'.
            test.rst:6:29:Nordic.Condescending:Do not use condescending language such as 'anyone can'.
            test.rst:6:49:Nordic.Condescending:Do not use condescending language such as 'Needless to say'.
            test.rst:6:66:Nordic.Condescending:Do not use condescending language such as 'do not worry'.
            test.rst:8:1:Nordic.Condescending:Do not use condescending language such as 'Don't worry'.
            """
