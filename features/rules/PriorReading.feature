Feature: PriorReading

    Scenario: PriorReading
        When I test "PriorReading"
        Then the output should contain exactly:
            """
            test.md:3:1:Nordic.PriorReading:Do not assume that the reader has read other content ('As we discussed earlier'). Link to the topic instead.
            test.md:5:1:Nordic.PriorReading:Do not assume that the reader has read other content ('Now that you have'). Link to the topic instead.
            test.md:7:1:Nordic.PriorReading:Do not assume that the reader has read other content ('The previous page discussed'). Link to the topic instead.
            test.md:9:1:Nordic.PriorReading:Do not assume that the reader has read other content ('Remember the timer settings from'). Link to the topic instead.
            test.rst:4:1:Nordic.PriorReading:Do not assume that the reader has read other content ('As we discussed earlier'). Link to the topic instead.
            test.rst:6:1:Nordic.PriorReading:Do not assume that the reader has read other content ('Now that you have'). Link to the topic instead.
            test.rst:8:1:Nordic.PriorReading:Do not assume that the reader has read other content ('The previous page discussed'). Link to the topic instead.
            test.rst:10:1:Nordic.PriorReading:Do not assume that the reader has read other content ('Remember the timer settings from'). Link to the topic instead.
            """
