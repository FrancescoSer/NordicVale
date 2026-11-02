Feature: RangeTime

    Scenario: RangeTime in Markdown and reStructuredText
        When I test "RangeTime"
        Then the output should contain exactly:
            """
            test.md:3:20:Nordic.RangeTime:Use 'to' instead of a dash in the range '10:00 AM - 2:00 PM', and repeat the unit for each value.
            test.md:5:16:Nordic.RangeTime:Use 'to' instead of a dash in the range '10:00–11:00 AM', and repeat the unit for each value.
            test.md:5:45:Nordic.RangeTime:Use 'to' instead of a dash in the range '9 AM–5 PM', and repeat the unit for each value.
            test.md:7:18:Nordic.RangeTime:Use 'to' instead of a dash in the range '08:00–17:00', and repeat the unit for each value.
            test.md:9:15:Nordic.RangeTime:Use 'to' instead of a dash in the range 'June 1–10', and repeat the unit for each value.
            test.md:9:29:Nordic.RangeTime:Use 'to' instead of a dash in the range 'July 1 - July 10', and repeat the unit for each value.
            test.md:11:15:Nordic.RangeTime:Use 'to' instead of a dash in the range '1.8–3.6 V', and repeat the unit for each value.
            test.md:11:42:Nordic.RangeTime:Use 'to' instead of a dash in the range '-40°C–100°C', and repeat the unit for each value.
            test.md:13:21:Nordic.RangeTime:Use 'to' instead of a dash in the range '-3–+20 dBm', and repeat the unit for each value.
            test.md:13:49:Nordic.RangeTime:Use 'to' instead of a dash in the range '2–3 hours', and repeat the unit for each value.
            test.rst:4:20:Nordic.RangeTime:Use 'to' instead of a dash in the range '10:00 AM - 2:00 PM', and repeat the unit for each value.
            test.rst:6:16:Nordic.RangeTime:Use 'to' instead of a dash in the range '10:00–11:00 AM', and repeat the unit for each value.
            test.rst:6:45:Nordic.RangeTime:Use 'to' instead of a dash in the range '9 AM–5 PM', and repeat the unit for each value.
            test.rst:8:18:Nordic.RangeTime:Use 'to' instead of a dash in the range '08:00–17:00', and repeat the unit for each value.
            test.rst:10:15:Nordic.RangeTime:Use 'to' instead of a dash in the range 'June 1–10', and repeat the unit for each value.
            test.rst:10:29:Nordic.RangeTime:Use 'to' instead of a dash in the range 'July 1 - July 10', and repeat the unit for each value.
            test.rst:12:15:Nordic.RangeTime:Use 'to' instead of a dash in the range '1.8–3.6 V', and repeat the unit for each value.
            test.rst:12:42:Nordic.RangeTime:Use 'to' instead of a dash in the range '-40°C–100°C', and repeat the unit for each value.
            test.rst:14:21:Nordic.RangeTime:Use 'to' instead of a dash in the range '-3–+20 dBm', and repeat the unit for each value.
            test.rst:14:49:Nordic.RangeTime:Use 'to' instead of a dash in the range '2–3 hours', and repeat the unit for each value.
            """
