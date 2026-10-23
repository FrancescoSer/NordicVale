Feature: Wordiness

    Scenario: Redundant and wordy phrases
        When I test "Wordiness"
        Then the output should contain exactly:
            """
            test.md:3:15:Nordic.Wordiness:Consider using 'to' instead of 'in order to'.
            test.md:3:50:Nordic.Wordiness:Consider using 'to' instead of 'In order to'.
            test.md:5:1:Nordic.Wordiness:Consider using 'because' instead of 'Due to the fact that'.
            test.md:5:59:Nordic.Wordiness:Consider using 'use' instead of 'Make use of'.
            test.md:7:5:Nordic.Wordiness:Consider using 'result' instead of 'end result'.
            test.md:7:21:Nordic.Wordiness:Consider using 'fundamentals' instead of 'basic fundamentals'.
            test.md:7:47:Nordic.Wordiness:Consider using 'each' or 'every' instead of 'Each and every'.
            test.md:9:1:Nordic.Wordiness:Consider using 'add' instead of 'Add an additional'.
            test.md:9:30:Nordic.Wordiness:Consider using 'near' instead of 'in close proximity to'.
            test.md:9:71:Nordic.Wordiness:Consider using 'proximity' or 'near' instead of 'close proximity'.
            test.md:11:5:Nordic.Wordiness:Consider using 'boot' instead of 'boot up'.
            test.md:11:23:Nordic.Wordiness:Consider using 'revert' instead of 'Revert back'.
            test.md:11:47:Nordic.Wordiness:Consider using 'many' instead of 'A large number of'.
            test.md:11:74:Nordic.Wordiness:Consider using 'many' instead of 'a number of'.
            test.md:13:1:Nordic.Wordiness:Consider using 'now' instead of 'At this point in time'.
            test.md:13:37:Nordic.Wordiness:Consider using 'pending' instead of 'currently pending'.
            test.md:13:56:Nordic.Wordiness:Consider using 'completed' instead of 'Successfully completed'.
            test.md:15:1:Nordic.Wordiness:Consider using 'eliminate' instead of 'Completely eliminate'.
            test.md:15:37:Nordic.Wordiness:Consider using 'consider' instead of 'Take into consideration'.
            test.md:19:13:Nordic.Wordiness:Consider using 'between' instead of 'in between'.
            test.rst:4:15:Nordic.Wordiness:Consider using 'to' instead of 'in order to'.
            test.rst:4:50:Nordic.Wordiness:Consider using 'to' instead of 'In order to'.
            test.rst:6:1:Nordic.Wordiness:Consider using 'because' instead of 'Due to the fact that'.
            test.rst:6:59:Nordic.Wordiness:Consider using 'use' instead of 'Make use of'.
            test.rst:8:5:Nordic.Wordiness:Consider using 'result' instead of 'end result'.
            test.rst:8:21:Nordic.Wordiness:Consider using 'fundamentals' instead of 'basic fundamentals'.
            test.rst:8:47:Nordic.Wordiness:Consider using 'each' or 'every' instead of 'Each and every'.
            test.rst:10:1:Nordic.Wordiness:Consider using 'add' instead of 'Add an additional'.
            test.rst:10:30:Nordic.Wordiness:Consider using 'near' instead of 'in close proximity to'.
            test.rst:10:71:Nordic.Wordiness:Consider using 'proximity' or 'near' instead of 'close proximity'.
            test.rst:12:5:Nordic.Wordiness:Consider using 'boot' instead of 'boot up'.
            test.rst:12:23:Nordic.Wordiness:Consider using 'revert' instead of 'Revert back'.
            test.rst:12:47:Nordic.Wordiness:Consider using 'many' instead of 'A large number of'.
            test.rst:12:74:Nordic.Wordiness:Consider using 'many' instead of 'a number of'.
            test.rst:14:1:Nordic.Wordiness:Consider using 'now' instead of 'At this point in time'.
            test.rst:14:37:Nordic.Wordiness:Consider using 'pending' instead of 'currently pending'.
            test.rst:14:56:Nordic.Wordiness:Consider using 'completed' instead of 'Successfully completed'.
            test.rst:16:1:Nordic.Wordiness:Consider using 'eliminate' instead of 'Completely eliminate'.
            test.rst:16:37:Nordic.Wordiness:Consider using 'consider' instead of 'Take into consideration'.
            test.rst:20:13:Nordic.Wordiness:Consider using 'between' instead of 'in between'.
            """
