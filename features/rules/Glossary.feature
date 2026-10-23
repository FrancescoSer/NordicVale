Feature: Glossary

    Scenario: Prohibited glossary and product-name terms
        When I test "Glossary"
        Then the output should contain exactly:
            """
            test.md:3:29:Nordic.Glossary:Use 'ampere meter' instead of 'ammeter'.
            test.md:5:5:Nordic.Glossary:Use 'Attribute Table' or 'GATT Server Attribute Table' instead of 'ATTDB'.
            test.md:5:21:Nordic.Glossary:Use 'Attribute Table' or 'GATT Server Attribute Table' instead of 'Attribute Database'.
            test.md:7:5:Nordic.Glossary:Use 'Bluetooth Host' instead of 'BLE Host'.
            test.md:7:27:Nordic.Glossary:Use 'Bluetooth Host' instead of 'Bluetooth LE Host'.
            test.md:7:54:Nordic.Glossary:Use 'Bluetooth Low Energy' or 'Bluetooth LE' instead of 'BLE'.
            test.md:9:10:Nordic.Glossary:Use 'SoftDevice' instead of 'Stack'.
            test.md:9:59:Nordic.Glossary:Use 'qualified against Bluetooth® Core 5.0' instead of 'qualified against Bluetooth® 5.0'.
            test.md:11:1:Nordic.Glossary:Use 'blink' instead of 'Flash'.
            test.md:11:24:Nordic.Glossary:Use 'blinking' instead of 'flashing'.
            test.md:13:1:Nordic.Glossary:Use 'verify' instead of 'Double-check'.
            test.md:13:55:Nordic.Glossary:Use 'verified' instead of 'double-checked'.
            test.md:15:10:Nordic.Glossary:Use 'ID' instead of 'Id'.
            test.md:15:21:Nordic.Glossary:Use 'ID' instead of 'id'.
            test.md:17:12:Nordic.Glossary:Use 'Li-poly' or 'lithium-polymer' instead of 'LiPo'.
            test.md:17:30:Nordic.Glossary:Use 'lithium iron phosphate' instead of 'lithium ferro-phosphate'.
            test.md:17:65:Nordic.Glossary:Use 'Cortex-M4 with FPU' instead of 'M4F'.
            test.md:17:82:Nordic.Glossary:Use 'Cortex-M4 with FPU' instead of 'Cortex-M4F'.
            test.md:19:10:Nordic.Glossary:Use 'Type 2 Tag' instead of 'tag type 2'.
            test.md:19:39:Nordic.Glossary:Use 'nRF Connect for VS Code extension' instead of 'nRF Connect extension for VS Code'.
            test.md:21:13:Nordic.Glossary:Use 'computer' instead of 'PC'.
            test.md:21:29:Nordic.Glossary:Use 'computers' instead of 'PCs'.
            test.md:21:42:Nordic.Glossary:Use 'SPI instruction' instead of 'SPI command'.
            test.md:21:63:Nordic.Glossary:Use 'an LED' instead of 'a LED'.
            test.md:21:73:Nordic.Glossary:Use 'An LED' instead of 'A LED'.
            test.md:23:11:Nordic.Glossary:Use 'child image' instead of 'subimage'.
            test.md:23:29:Nordic.Glossary:Use 'crystal oscillator' instead of 'XO'.
            test.md:23:35:Nordic.Glossary:Use 'crystal oscillator' instead of 'XOSC'.
            test.md:23:49:Nordic.Glossary:Use 'crystal' instead of 'XTAL'.
            test.md:23:58:Nordic.Glossary:Use 'crystal' instead of 'Xtal'.
            test.md:23:68:Nordic.Glossary:Use 'Wi-Fi Alliance' instead of 'WFA'.
            test.md:25:9:Nordic.Glossary:Use 'nRF Connect SDK' instead of 'NCS'.
            test.md:25:16:Nordic.Glossary:Use 'nRF Connect SDK' instead of 'NCSDK'.
            test.md:25:27:Nordic.Glossary:Use 'Secure Partition Manager' instead of 'SPM'.
            test.md:25:35:Nordic.Glossary:Use 'Nordic Secure Partition Manager' instead of 'NSPM'.
            test.md:25:53:Nordic.Glossary:Use 'nRF51 Series', 'nRF52 Series', 'nRF53 Series', or 'nRF54L Series' instead of 'nRF5 Series'.
            test.md:25:73:Nordic.Glossary:Use 'nRF52 Series', 'nRF53 Series', 'nRF54L Series', or 'nRF91 Series' instead of 'nRF Series'.
            test.md:25:92:Nordic.Glossary:Use 'nRF91 Series' instead of 'nRF9x Series'.
            test.md:27:9:Nordic.Glossary:Use 'nRF52840' instead of 'NRF52840'.
            test.md:27:21:Nordic.Glossary:Use 'nRF52840' instead of 'Nrf52840'.
            test.md:27:33:Nordic.Glossary:Use 'nRF52840' instead of 'nrf52840'.
            test.md:27:78:Nordic.Glossary:Use 'nRF Connect' instead of 'NRF Connect'.
            test.md:27:99:Nordic.Glossary:Use 'nPM1300' instead of 'NPM1300'.
            test.md:29:12:Nordic.Glossary:Use 'Thingy' instead of 'thingy'.
            test.md:29:26:Nordic.Glossary:Use 'Nordic Thingy' instead of 'NORDIC THINGY'.
            test.md:29:63:Nordic.Glossary:Use 'DK boards' instead of 'DKs'.
            test.md:29:76:Nordic.Glossary:Use 'Bare Metal' instead of 'baremetal'.
            test.md:29:89:Nordic.Glossary:Use 'Bare Metal' instead of 'bare-metal'.
            test.rst:4:29:Nordic.Glossary:Use 'ampere meter' instead of 'ammeter'.
            test.rst:6:5:Nordic.Glossary:Use 'Attribute Table' or 'GATT Server Attribute Table' instead of 'ATTDB'.
            test.rst:6:21:Nordic.Glossary:Use 'Attribute Table' or 'GATT Server Attribute Table' instead of 'Attribute Database'.
            test.rst:8:5:Nordic.Glossary:Use 'Bluetooth Host' instead of 'BLE Host'.
            test.rst:8:27:Nordic.Glossary:Use 'Bluetooth Host' instead of 'Bluetooth LE Host'.
            test.rst:8:54:Nordic.Glossary:Use 'Bluetooth Low Energy' or 'Bluetooth LE' instead of 'BLE'.
            test.rst:10:10:Nordic.Glossary:Use 'SoftDevice' instead of 'Stack'.
            test.rst:10:59:Nordic.Glossary:Use 'qualified against Bluetooth® Core 5.0' instead of 'qualified against Bluetooth® 5.0'.
            test.rst:12:1:Nordic.Glossary:Use 'blink' instead of 'Flash'.
            test.rst:12:24:Nordic.Glossary:Use 'blinking' instead of 'flashing'.
            test.rst:14:1:Nordic.Glossary:Use 'verify' instead of 'Double-check'.
            test.rst:14:55:Nordic.Glossary:Use 'verified' instead of 'double-checked'.
            test.rst:16:10:Nordic.Glossary:Use 'ID' instead of 'Id'.
            test.rst:16:21:Nordic.Glossary:Use 'ID' instead of 'id'.
            test.rst:18:12:Nordic.Glossary:Use 'Li-poly' or 'lithium-polymer' instead of 'LiPo'.
            test.rst:18:30:Nordic.Glossary:Use 'lithium iron phosphate' instead of 'lithium ferro-phosphate'.
            test.rst:18:65:Nordic.Glossary:Use 'Cortex-M4 with FPU' instead of 'M4F'.
            test.rst:18:82:Nordic.Glossary:Use 'Cortex-M4 with FPU' instead of 'Cortex-M4F'.
            test.rst:20:10:Nordic.Glossary:Use 'Type 2 Tag' instead of 'tag type 2'.
            test.rst:20:39:Nordic.Glossary:Use 'nRF Connect for VS Code extension' instead of 'nRF Connect extension for VS Code'.
            test.rst:22:13:Nordic.Glossary:Use 'computer' instead of 'PC'.
            test.rst:22:29:Nordic.Glossary:Use 'computers' instead of 'PCs'.
            test.rst:22:42:Nordic.Glossary:Use 'SPI instruction' instead of 'SPI command'.
            test.rst:22:63:Nordic.Glossary:Use 'an LED' instead of 'a LED'.
            test.rst:22:73:Nordic.Glossary:Use 'An LED' instead of 'A LED'.
            test.rst:24:11:Nordic.Glossary:Use 'child image' instead of 'subimage'.
            test.rst:24:29:Nordic.Glossary:Use 'crystal oscillator' instead of 'XO'.
            test.rst:24:35:Nordic.Glossary:Use 'crystal oscillator' instead of 'XOSC'.
            test.rst:24:49:Nordic.Glossary:Use 'crystal' instead of 'XTAL'.
            test.rst:24:58:Nordic.Glossary:Use 'crystal' instead of 'Xtal'.
            test.rst:24:68:Nordic.Glossary:Use 'Wi-Fi Alliance' instead of 'WFA'.
            test.rst:26:9:Nordic.Glossary:Use 'nRF Connect SDK' instead of 'NCS'.
            test.rst:26:16:Nordic.Glossary:Use 'nRF Connect SDK' instead of 'NCSDK'.
            test.rst:26:27:Nordic.Glossary:Use 'Secure Partition Manager' instead of 'SPM'.
            test.rst:26:35:Nordic.Glossary:Use 'Nordic Secure Partition Manager' instead of 'NSPM'.
            test.rst:26:53:Nordic.Glossary:Use 'nRF51 Series', 'nRF52 Series', 'nRF53 Series', or 'nRF54L Series' instead of 'nRF5 Series'.
            test.rst:26:73:Nordic.Glossary:Use 'nRF52 Series', 'nRF53 Series', 'nRF54L Series', or 'nRF91 Series' instead of 'nRF Series'.
            test.rst:26:92:Nordic.Glossary:Use 'nRF91 Series' instead of 'nRF9x Series'.
            test.rst:28:9:Nordic.Glossary:Use 'nRF52840' instead of 'NRF52840'.
            test.rst:28:21:Nordic.Glossary:Use 'nRF52840' instead of 'Nrf52840'.
            test.rst:28:33:Nordic.Glossary:Use 'nRF52840' instead of 'nrf52840'.
            test.rst:28:78:Nordic.Glossary:Use 'nRF Connect' instead of 'NRF Connect'.
            test.rst:28:99:Nordic.Glossary:Use 'nPM1300' instead of 'NPM1300'.
            test.rst:30:12:Nordic.Glossary:Use 'Thingy' instead of 'thingy'.
            test.rst:30:26:Nordic.Glossary:Use 'Nordic Thingy' instead of 'NORDIC THINGY'.
            test.rst:30:63:Nordic.Glossary:Use 'DK boards' instead of 'DKs'.
            test.rst:30:76:Nordic.Glossary:Use 'Bare Metal' instead of 'baremetal'.
            test.rst:30:89:Nordic.Glossary:Use 'Bare Metal' instead of 'bare-metal'.
            """
