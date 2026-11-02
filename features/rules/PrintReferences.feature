Feature: PrintReferences

    Scenario: PrintReferences
        When I test "PrintReferences"
        Then the output should contain exactly:
            """
            test.md:3:1:Nordic.PrintReferences:Do not use language that assumes a print format, such as 'See the next page'.
            test.md:3:32:Nordic.PrintReferences:Do not use language that assumes a print format, such as 'Turn to chapter'.
            test.md:5:1:Nordic.PrintReferences:Do not use language that assumes a print format, such as 'This manual'.
            test.md:5:47:Nordic.PrintReferences:Do not use language that assumes a print format, such as 'overleaf'.
            test.rst:4:1:Nordic.PrintReferences:Do not use language that assumes a print format, such as 'See the next page'.
            test.rst:4:32:Nordic.PrintReferences:Do not use language that assumes a print format, such as 'Turn to chapter'.
            test.rst:6:1:Nordic.PrintReferences:Do not use language that assumes a print format, such as 'This manual'.
            test.rst:6:47:Nordic.PrintReferences:Do not use language that assumes a print format, such as 'overleaf'.
            """
