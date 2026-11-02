Feature: LinkText

    Scenario: LinkText
        When I test "LinkText"
        Then the output should contain exactly:
            """
            test.md:3:7:Nordic.LinkText:Use link text that describes the destination, not '[here]'.
            test.md:7:5:Nordic.LinkText:Use link text that describes the destination, not '[this page]'.
            test.md:7:26:Nordic.LinkText:Use link text that describes the destination, not '[Read more]'.
            test.md:9:5:Nordic.LinkText:Use link text that describes the destination, not '[More information]'.
            test.md:9:37:Nordic.LinkText:Use link text that describes the destination, not '[link]'.
            test.rst:4:7:Nordic.LinkText:Use link text that describes the destination, not '`here <https://example.com>`__'.
            test.rst:8:5:Nordic.LinkText:Use link text that describes the destination, not '`this page <https://example.com>`_'.
            test.rst:8:44:Nordic.LinkText:Use link text that describes the destination, not '`Read more <https://example.com>`__'.
            test.rst:10:5:Nordic.LinkText:Use link text that describes the destination, not '`More information <#details>`__'.
            test.rst:10:40:Nordic.LinkText:Use link text that describes the destination, not '`link <https://example.com>`__'.
            """
