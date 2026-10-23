Feature: Terms

    Scenario: MSWSG A-Z terms and byte units
        When I test "Terms"
        Then the output should contain exactly:
            """
            test.md:3:13:Nordic.Terms:Prefer 'adapter' over 'adaptor'.
            test.md:3:35:Nordic.Terms:Prefer 'afterward' over 'Afterwards'.
            test.md:5:13:Nordic.Terms:Prefer 'antivirus' over 'anti-virus'.
            test.md:5:28:Nordic.Terms:Prefer 'anti-malware' over 'antimalware'.
            test.md:7:10:Nordic.Terms:Prefer 'appendices' over 'appendixes'.
            test.md:7:28:Nordic.Terms:Prefer 'chatbot' over 'chat bot'.
            test.md:7:68:Nordic.Terms:Prefer 'all day, every day' or 'always' over '24/7'.
            test.md:9:5:Nordic.Terms:Prefer 'a URL' over 'an URL'.
            test.md:9:56:Nordic.Terms:Prefer 'drive C' over 'C: drive'.
            test.md:11:17:Nordic.Terms:Prefer 'kB' over 'kb'.
            test.md:11:25:Nordic.Terms:Prefer 'kB' over 'KB'.
            test.md:11:118:Nordic.Terms:Prefer 'MB' over 'mb'.
            test.md:13:41:Nordic.Terms:Prefer 'Gbps' over 'gbps'.
            test.md:15:13:Nordic.Terms:Prefer 'J-Link' over 'jlink'.
            test.md:15:58:Nordic.Terms:Prefer 'phone' or 'mobile phone' over 'cell phone'.
            test.md:15:91:Nordic.Terms:Prefer 'smartphone' over 'smart phone'.
            test.md:17:19:Nordic.Terms:Prefer 'timeout' over 'time-out'.
            test.md:17:62:Nordic.Terms:Prefer 'keystroke' over 'keypress'.
            test.rst:4:13:Nordic.Terms:Prefer 'adapter' over 'adaptor'.
            test.rst:4:35:Nordic.Terms:Prefer 'afterward' over 'Afterwards'.
            test.rst:6:13:Nordic.Terms:Prefer 'antivirus' over 'anti-virus'.
            test.rst:6:28:Nordic.Terms:Prefer 'anti-malware' over 'antimalware'.
            test.rst:8:10:Nordic.Terms:Prefer 'appendices' over 'appendixes'.
            test.rst:8:28:Nordic.Terms:Prefer 'chatbot' over 'chat bot'.
            test.rst:8:68:Nordic.Terms:Prefer 'all day, every day' or 'always' over '24/7'.
            test.rst:10:5:Nordic.Terms:Prefer 'a URL' over 'an URL'.
            test.rst:10:56:Nordic.Terms:Prefer 'drive C' over 'C: drive'.
            test.rst:12:17:Nordic.Terms:Prefer 'kB' over 'kb'.
            test.rst:12:25:Nordic.Terms:Prefer 'kB' over 'KB'.
            test.rst:12:118:Nordic.Terms:Prefer 'MB' over 'mb'.
            test.rst:14:41:Nordic.Terms:Prefer 'Gbps' over 'gbps'.
            test.rst:16:13:Nordic.Terms:Prefer 'J-Link' over 'jlink'.
            test.rst:16:58:Nordic.Terms:Prefer 'phone' or 'mobile phone' over 'cell phone'.
            test.rst:16:91:Nordic.Terms:Prefer 'smartphone' over 'smart phone'.
            test.rst:18:19:Nordic.Terms:Prefer 'timeout' over 'time-out'.
            test.rst:18:62:Nordic.Terms:Prefer 'keystroke' over 'keypress'.
            """
