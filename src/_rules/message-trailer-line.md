---
name: MessageTrailerLine
type: error
---

<%= version_label "0.10.0" %>

This rule will trigger a validation issue when a [trailer line][trailers] was detected in an unexpected place in the commit message body. Trailer lines are lines with ["Co-authored-by"][co-author line] and ["Signed-off-by"][signed-off line] references, among others. Trailer lines need to be present at the end of the message body.

The co-author/sign-off reference that triggered this rule is not considered part of the message body's trailer section, and it will not be picked up by GitHub and other systems. The co-author will not be given credit for their work on the commit as a co-author of the commit.

The following trailer lines are recognized:

- ["Co-authored-by"][co-author line]
- ["Signed-off-by"][signed-off line]
- "Helped-by"

### Invalid co-authored-by commit example

In the invalid example the "Co-authored-by" line is in the middle of the message body, rather than at the end of the message body.

```
This is the subject

This is the message body.

Co-authored-by: Person A <name@domain.com>

Some other line in the message body.
```

### Valid co-authored-by commit example

In the valid example the line with the "Co-authored-by" reference is at the end of the message body, after an empty line. This is the message body trailer section. More than one trailer line can be present.

```
This is the subject

This is the message body.

Some other line in the message body.

Co-authored-by: Person A <name@domain.com>
```

[co-author line]: https://docs.github.com/en/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/creating-a-commit-with-multiple-authors
[signed-off line]: https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---signoff
[trailers]: https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---trailerlttokengtltvaluegt
