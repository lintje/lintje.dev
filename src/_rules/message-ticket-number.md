---
name: MessageTicketNumber
type: hint
---

<%= version_label "0.7.0" %>

The commit subject and message do not contain a reference to a ticket number. Link back to the relevant ticket/issue using the Git repository's hosting service in the commit message body.

```
Closes #123
Closes org/repo#123
Closes https://hosting.com/org/repo/issues/123
Related !123
Part of #123
Part of issue #123
Part of project #123
Part of epic #123
```

### Notes about MessageTicketNumber

- The phrases "Part of" and "Related" were added in version 0.7.1.
- The phrases "Part of issue/project/epic" were added in version 0.9.0.
- URL detection was added in version 0.9.0.
