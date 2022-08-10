---
name: MessagePresence
type: error
---

<%= version_label "0.1.0" %>

The commit's message body is empty or too short. Add a message body to the commit to elaborate on _why_ the change was necessary, what alternatives were considered and why this particular implementation was chosen as a solution.

Ticket references ("Fixes #123") and ["co-authored-by" lines](https://docs.github.com/en/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/creating-a-commit-with-multiple-authors) do not count towards the required message minimal length.

### Notes about messages presence

- This rule is skipped if a [RebaseCommit] issue is found. To fix a RebaseCommit issue the commit needs to be rebased into the commit it's marked to fixup or squash, and there will be no need to add a message body.
- Line breaks do not count towards the required minimum message length since version 0.9.0.
- Ticket and issue references using keywords like "Closes #123", do not count towards the required minimum message length since version 0.9.0.
- Co-authored-by lines, do not count towards the required minimum message length since version 0.9.0.
