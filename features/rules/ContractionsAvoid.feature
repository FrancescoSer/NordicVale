Feature: ContractionsAvoid

    Scenario: ContractionsAvoid
        When I test "ContractionsAvoid"
        Then the output should contain exactly:
            """
            test.md:3:1:Nordic.ContractionsAvoid:Do not use the contraction 'It's'. Write the words in full.
            test.md:3:17:Nordic.ContractionsAvoid:Do not use the contraction 'that's'. Write the words in full.
            test.md:5:5:Nordic.ContractionsAvoid:Do not use the contraction 'mustn't'. Write the words in full.
            test.md:5:44:Nordic.ContractionsAvoid:Do not use the contraction 'ain't'. Write the words in full.
            test.md:7:1:Nordic.ContractionsAvoid:Do not use the contraction 'Don't'. Write the words in full.
            test.md:11:8:Nordic.ContractionsAvoid:Do not use the contraction 'gonna'. Write the words in full.
            test.md:11:27:Nordic.ContractionsAvoid:Do not use the contraction 'it's'. Write the words in full.
            test.md:11:32:Nordic.ContractionsAvoid:Do not use the contraction 'gotta'. Write the words in full.
            test.md:13:1:Nordic.ContractionsAvoid:Do not use the contraction ''Twas'. Write the words in full.
            test.rst:4:1:Nordic.ContractionsAvoid:Do not use the contraction 'It's'. Write the words in full.
            test.rst:4:17:Nordic.ContractionsAvoid:Do not use the contraction 'that's'. Write the words in full.
            test.rst:6:5:Nordic.ContractionsAvoid:Do not use the contraction 'mustn't'. Write the words in full.
            test.rst:6:44:Nordic.ContractionsAvoid:Do not use the contraction 'ain't'. Write the words in full.
            test.rst:8:1:Nordic.ContractionsAvoid:Do not use the contraction 'Don't'. Write the words in full.
            test.rst:12:8:Nordic.ContractionsAvoid:Do not use the contraction 'gonna'. Write the words in full.
            test.rst:12:27:Nordic.ContractionsAvoid:Do not use the contraction 'it's'. Write the words in full.
            test.rst:12:32:Nordic.ContractionsAvoid:Do not use the contraction 'gotta'. Write the words in full.
            test.rst:14:1:Nordic.ContractionsAvoid:Do not use the contraction ''Twas'. Write the words in full.
            """
