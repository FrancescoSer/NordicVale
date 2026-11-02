Feature: CodeFormatting

    Scenario: CodeFormatting
        When I test "CodeFormatting"
        Then the output should contain exactly:
            """
            test.md:3:8:Nordic.CodeFormatting:Format 'CONFIG_BT=y' as code.
            test.md:3:27:Nordic.CodeFormatting:Format 'prj.conf' as code.
            test.md:5:13:Nordic.CodeFormatting:Format '6e400001-b5a3-f393-e0a9-e50e24dcca9e' as code.
            test.md:7:6:Nordic.CodeFormatting:Format 'bt_enable()' as code.
            test.rst:4:8:Nordic.CodeFormatting:Format 'CONFIG_BT=y' as code.
            test.rst:4:27:Nordic.CodeFormatting:Format 'prj.conf' as code.
            test.rst:6:13:Nordic.CodeFormatting:Format '6e400001-b5a3-f393-e0a9-e50e24dcca9e' as code.
            test.rst:8:6:Nordic.CodeFormatting:Format 'bt_enable()' as code.
            test.rst:19:21:Nordic.CodeFormatting:Format 'bt_ctlr.c' as code.
            test.rst:25:11:Nordic.CodeFormatting:Format 'nrf_cloud_connect()' as code.
            """
