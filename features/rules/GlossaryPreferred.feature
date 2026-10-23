Feature: GlossaryPreferred

    Scenario: Preferred spellings, restricted terms, and terms to avoid
        When I test "GlossaryPreferred"
        Then the output should contain exactly:
            """
            test.md:3:1:Nordic.GlossaryPreferred:Prefer 'blink smoothly' over 'Softblink'.
            test.md:3:31:Nordic.GlossaryPreferred:Prefer 'blinking smoothly' over 'soft-blinking'.
            test.md:5:10:Nordic.GlossaryPreferred:Prefer 'regulator' over 'converter'.
            test.md:5:38:Nordic.GlossaryPreferred:Prefer 'regulator' over 'converter'.
            test.md:7:7:Nordic.GlossaryPreferred:Prefer 'front-end module' over 'range extender'.
            test.md:7:31:Nordic.GlossaryPreferred:Prefer 'hexadecimal digit' over 'hex digit'.
            test.md:7:51:Nordic.GlossaryPreferred:Prefer 'HEX file' over 'hex file'.
            test.md:9:13:Nordic.GlossaryPreferred:Prefer 'TWI' or 'two-wire interface' over 'I2C'.
            test.md:9:55:Nordic.GlossaryPreferred:Prefer 'linear voltage regulator' over 'low-dropout regulator'.
            test.md:11:1:Nordic.GlossaryPreferred:Prefer 'read' over 'Query'.
            test.md:11:39:Nordic.GlossaryPreferred:Prefer 'reads' over 'queries'.
            test.md:13:9:Nordic.GlossaryPreferred:Prefer 'SPI' over 'SPI interface'.
            test.md:13:24:Nordic.GlossaryPreferred:Prefer 'synchronize' over 'Sync'.
            test.md:13:56:Nordic.GlossaryPreferred:Prefer 'synchronized' over 'synced'.
            test.md:15:9:Nordic.GlossaryPreferred:Prefer 'standard' over 'vanilla'.
            test.md:15:32:Nordic.GlossaryPreferred:Prefer 'baud rate' over 'baudrate'.
            test.md:15:49:Nordic.GlossaryPreferred:Prefer 'baud rate' over 'baud-rate'.
            test.md:17:21:Nordic.GlossaryPreferred:Prefer 'Bluetooth' over 'bluetooth'.
            test.md:17:35:Nordic.GlossaryPreferred:Prefer 'Bluetooth Low Energy' over 'Bluetooth low energy'.
            test.md:19:10:Nordic.GlossaryPreferred:Prefer 'datasheet' over 'data sheet'.
            test.md:19:29:Nordic.GlossaryPreferred:Prefer 'datasheet' over 'data-sheet'.
            test.md:19:70:Nordic.GlossaryPreferred:Prefer 'big-endian' over 'big endian'.
            test.md:21:10:Nordic.GlossaryPreferred:Prefer 'drop-down' over 'dropdown'.
            test.md:21:27:Nordic.GlossaryPreferred:Prefer 'drop-down' over 'drop down'.
            test.md:21:51:Nordic.GlossaryPreferred:Prefer 'email' over 'e-mail'.
            test.md:21:67:Nordic.GlossaryPreferred:Prefer 'endpoint' over 'end point'.
            test.md:23:11:Nordic.GlossaryPreferred:Prefer 'file name' over 'filename'.
            test.md:23:46:Nordic.GlossaryPreferred:Prefer 'file system' over 'filesystem'.
            test.md:23:66:Nordic.GlossaryPreferred:Prefer 'hardcoded' over 'hard-coded'.
            test.md:25:16:Nordic.GlossaryPreferred:Prefer 'Internet' over 'internet'.
            test.md:25:58:Nordic.GlossaryPreferred:Prefer 'life cycle' over 'life-cycle'.
            test.md:25:76:Nordic.GlossaryPreferred:Prefer 'pinout' over 'pin out'.
            test.md:27:7:Nordic.GlossaryPreferred:Prefer 'pull-up' over 'pullup'.
            test.md:27:20:Nordic.GlossaryPreferred:Prefer 'pull-up' over 'pull up'.
            test.md:27:69:Nordic.GlossaryPreferred:Prefer 'set up' or 'setup' over 'set-up'.
            test.md:27:84:Nordic.GlossaryPreferred:Prefer 'startup' over 'start-up'.
            test.md:29:5:Nordic.GlossaryPreferred:Prefer 'SoftDevice' over 'Softdevice'.
            test.md:29:24:Nordic.GlossaryPreferred:Prefer 'SoftDevice' over 'soft device'.
            test.md:29:67:Nordic.GlossaryPreferred:Prefer 'timestamp' over 'time stamp'.
            test.md:29:84:Nordic.GlossaryPreferred:Prefer 'toolchain' over 'tool chain'.
            test.md:31:5:Nordic.GlossaryPreferred:Prefer 'TX/RX' over 'Tx/Rx'.
            test.md:31:21:Nordic.GlossaryPreferred:Prefer 'ultra-low power' over 'ultra low power'.
            test.md:31:47:Nordic.GlossaryPreferred:Prefer 'username' over 'user name'.
            test.md:31:87:Nordic.GlossaryPreferred:Prefer 'walk-through' over 'walkthrough'.
            test.md:33:10:Nordic.GlossaryPreferred:Prefer 'Wi-Fi' over 'WiFi'.
            test.md:33:57:Nordic.GlossaryPreferred:Prefer 'workaround' over 'work-around'.
            test.md:33:79:Nordic.GlossaryPreferred:Prefer 'zip file' over 'ZIP file'.
            test.md:35:11:Nordic.GlossaryPreferred:Prefer 'Series' over 'series'.
            test.md:35:33:Nordic.GlossaryPreferred:Prefer 'Series' over 'series'.
            test.md:35:79:Nordic.GlossaryPreferred:Prefer 'nRF Connect SDK Add-ons' over 'nRF Connect SDK add-ons'.
            test.rst:4:1:Nordic.GlossaryPreferred:Prefer 'blink smoothly' over 'Softblink'.
            test.rst:4:31:Nordic.GlossaryPreferred:Prefer 'blinking smoothly' over 'soft-blinking'.
            test.rst:6:10:Nordic.GlossaryPreferred:Prefer 'regulator' over 'converter'.
            test.rst:6:38:Nordic.GlossaryPreferred:Prefer 'regulator' over 'converter'.
            test.rst:8:7:Nordic.GlossaryPreferred:Prefer 'front-end module' over 'range extender'.
            test.rst:8:31:Nordic.GlossaryPreferred:Prefer 'hexadecimal digit' over 'hex digit'.
            test.rst:8:51:Nordic.GlossaryPreferred:Prefer 'HEX file' over 'hex file'.
            test.rst:10:13:Nordic.GlossaryPreferred:Prefer 'TWI' or 'two-wire interface' over 'I2C'.
            test.rst:10:55:Nordic.GlossaryPreferred:Prefer 'linear voltage regulator' over 'low-dropout regulator'.
            test.rst:12:1:Nordic.GlossaryPreferred:Prefer 'read' over 'Query'.
            test.rst:12:39:Nordic.GlossaryPreferred:Prefer 'reads' over 'queries'.
            test.rst:14:9:Nordic.GlossaryPreferred:Prefer 'SPI' over 'SPI interface'.
            test.rst:14:24:Nordic.GlossaryPreferred:Prefer 'synchronize' over 'Sync'.
            test.rst:14:56:Nordic.GlossaryPreferred:Prefer 'synchronized' over 'synced'.
            test.rst:16:9:Nordic.GlossaryPreferred:Prefer 'standard' over 'vanilla'.
            test.rst:16:32:Nordic.GlossaryPreferred:Prefer 'baud rate' over 'baudrate'.
            test.rst:16:49:Nordic.GlossaryPreferred:Prefer 'baud rate' over 'baud-rate'.
            test.rst:18:21:Nordic.GlossaryPreferred:Prefer 'Bluetooth' over 'bluetooth'.
            test.rst:18:35:Nordic.GlossaryPreferred:Prefer 'Bluetooth Low Energy' over 'Bluetooth low energy'.
            test.rst:20:10:Nordic.GlossaryPreferred:Prefer 'datasheet' over 'data sheet'.
            test.rst:20:29:Nordic.GlossaryPreferred:Prefer 'datasheet' over 'data-sheet'.
            test.rst:20:70:Nordic.GlossaryPreferred:Prefer 'big-endian' over 'big endian'.
            test.rst:22:10:Nordic.GlossaryPreferred:Prefer 'drop-down' over 'dropdown'.
            test.rst:22:27:Nordic.GlossaryPreferred:Prefer 'drop-down' over 'drop down'.
            test.rst:22:51:Nordic.GlossaryPreferred:Prefer 'email' over 'e-mail'.
            test.rst:22:67:Nordic.GlossaryPreferred:Prefer 'endpoint' over 'end point'.
            test.rst:24:11:Nordic.GlossaryPreferred:Prefer 'file name' over 'filename'.
            test.rst:24:46:Nordic.GlossaryPreferred:Prefer 'file system' over 'filesystem'.
            test.rst:24:66:Nordic.GlossaryPreferred:Prefer 'hardcoded' over 'hard-coded'.
            test.rst:26:16:Nordic.GlossaryPreferred:Prefer 'Internet' over 'internet'.
            test.rst:26:58:Nordic.GlossaryPreferred:Prefer 'life cycle' over 'life-cycle'.
            test.rst:26:76:Nordic.GlossaryPreferred:Prefer 'pinout' over 'pin out'.
            test.rst:28:7:Nordic.GlossaryPreferred:Prefer 'pull-up' over 'pullup'.
            test.rst:28:20:Nordic.GlossaryPreferred:Prefer 'pull-up' over 'pull up'.
            test.rst:28:69:Nordic.GlossaryPreferred:Prefer 'set up' or 'setup' over 'set-up'.
            test.rst:28:84:Nordic.GlossaryPreferred:Prefer 'startup' over 'start-up'.
            test.rst:30:5:Nordic.GlossaryPreferred:Prefer 'SoftDevice' over 'Softdevice'.
            test.rst:30:24:Nordic.GlossaryPreferred:Prefer 'SoftDevice' over 'soft device'.
            test.rst:30:67:Nordic.GlossaryPreferred:Prefer 'timestamp' over 'time stamp'.
            test.rst:30:84:Nordic.GlossaryPreferred:Prefer 'toolchain' over 'tool chain'.
            test.rst:32:5:Nordic.GlossaryPreferred:Prefer 'TX/RX' over 'Tx/Rx'.
            test.rst:32:21:Nordic.GlossaryPreferred:Prefer 'ultra-low power' over 'ultra low power'.
            test.rst:32:47:Nordic.GlossaryPreferred:Prefer 'username' over 'user name'.
            test.rst:32:87:Nordic.GlossaryPreferred:Prefer 'walk-through' over 'walkthrough'.
            test.rst:34:10:Nordic.GlossaryPreferred:Prefer 'Wi-Fi' over 'WiFi'.
            test.rst:34:57:Nordic.GlossaryPreferred:Prefer 'workaround' over 'work-around'.
            test.rst:34:79:Nordic.GlossaryPreferred:Prefer 'zip file' over 'ZIP file'.
            test.rst:36:11:Nordic.GlossaryPreferred:Prefer 'Series' over 'series'.
            test.rst:36:33:Nordic.GlossaryPreferred:Prefer 'Series' over 'series'.
            test.rst:36:79:Nordic.GlossaryPreferred:Prefer 'nRF Connect SDK Add-ons' over 'nRF Connect SDK add-ons'.
            """
