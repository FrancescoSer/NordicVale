Feature: TableNotes

    Scenario: TableNotes
        When I test "TableNotes"
        Then the output should contain exactly:
            """
            test.md:5:17:Nordic.TableNotes:Do not put note text in a table cell. Use a footnote or move the note to the body text.
            test.md:7:18:Nordic.TableNotes:Do not put note text in a table cell. Use a footnote or move the note to the body text.
            test.rst:10:8:Nordic.TableNotes:Do not put note text in a table cell. Use a footnote or move the note to the body text.
            test.rst:14:8:Nordic.TableNotes:Do not put note text in a table cell. Use a footnote or move the note to the body text.
            test.rst:19:16:Nordic.TableNotes:Do not put note text in a table cell. Use a footnote or move the note to the body text.
            """
