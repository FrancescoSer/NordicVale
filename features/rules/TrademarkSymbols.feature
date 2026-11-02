Feature: TrademarkSymbols

    Scenario: TrademarkSymbols
        When I test "TrademarkSymbols"
        Then the output should contain exactly:
            """
            test.md:5:1:Nordic.TrademarkSymbols:Place the trademark symbol immediately after the trademark, with no space or parentheses ('Bluetooth ®').
            test.md:7:1:Nordic.TrademarkSymbols:Place the trademark symbol immediately after the trademark, with no space or parentheses ('Arm (®)').
            test.md:13:5:Nordic.TrademarkSymbols:Place the trademark symbol immediately after the trademark, with no space or parentheses ('Matter ™').
            test.rst:6:1:Nordic.TrademarkSymbols:Place the trademark symbol immediately after the trademark, with no space or parentheses ('Bluetooth ®').
            test.rst:8:1:Nordic.TrademarkSymbols:Place the trademark symbol immediately after the trademark, with no space or parentheses ('Arm (®)').
            test.rst:14:5:Nordic.TrademarkSymbols:Place the trademark symbol immediately after the trademark, with no space or parentheses ('Matter ™').
            """
