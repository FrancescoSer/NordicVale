Feature: CommaThen

    Scenario: CommaThen
        When I test "CommaThen"
        Then the output should contain exactly:
            """
            test.md:3:15:Nordic.CommaThen:Do not join two clauses with ', then'. Use a semicolon, or write two sentences.
            test.md:5:22:Nordic.CommaThen:Do not join two clauses with ', then'. Use a semicolon, or write two sentences.
            test.rst:4:15:Nordic.CommaThen:Do not join two clauses with ', then'. Use a semicolon, or write two sentences.
            test.rst:6:22:Nordic.CommaThen:Do not join two clauses with ', then'. Use a semicolon, or write two sentences.
            """
