---
name: SubjectTicketNumber
type: error
---

<%= version_label "0.1.0" %>

The commit's subject includes a reference to a ticket or issue. Move this to the message body.

Invalid subject examples:

```md
# Bad
Fix #123
I have fixed #123
I have fixed org/repo#123
I have fixed https://github.com/org/repo#123
JIRA-123
Fix JIRA-123 for good
```
