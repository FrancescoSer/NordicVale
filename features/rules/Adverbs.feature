Feature: Adverbs

    Scenario: Unnecessary adverbs and condescending words
        When I test "Adverbs"
        Then the output should contain exactly:
            """
            test.md:3:1:Nordic.Adverbs:Remove 'Simply' if it is not important to the meaning of the statement.
            test.md:5:1:Nordic.Adverbs:Remove 'Just' if it is not important to the meaning of the statement.
            test.md:7:7:Nordic.Adverbs:Remove 'easy' if it is not important to the meaning of the statement.
            test.md:7:42:Nordic.Adverbs:Remove 'obviously' if it is not important to the meaning of the statement.
            test.md:9:5:Nordic.Adverbs:Remove 'very' if it is not important to the meaning of the statement.
            test.md:9:21:Nordic.Adverbs:Remove 'quickly' if it is not important to the meaning of the statement.
            test.rst:4:1:Nordic.Adverbs:Remove 'Simply' if it is not important to the meaning of the statement.
            test.rst:6:1:Nordic.Adverbs:Remove 'Just' if it is not important to the meaning of the statement.
            test.rst:8:7:Nordic.Adverbs:Remove 'easy' if it is not important to the meaning of the statement.
            test.rst:8:42:Nordic.Adverbs:Remove 'obviously' if it is not important to the meaning of the statement.
            test.rst:10:5:Nordic.Adverbs:Remove 'very' if it is not important to the meaning of the statement.
            test.rst:10:21:Nordic.Adverbs:Remove 'quickly' if it is not important to the meaning of the statement.
            """
