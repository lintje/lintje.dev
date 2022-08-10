---
name: BranchNameTicketNumber
type: error
---

<%= version_label "0.4.0" %>

The branch name is detected to only contain a ticket number or a prefix and ticket number. Ticket numbers alone don't communicate much, especially if all branches are formatted this way. Describe the branch in more detail, in a couple words, to explain what the change is about. Ticket numbers are accepted, but not as the only thing in the branch name.

```md
# Good branch names
123-email-validation
123_fix_email_validation
123/feature-email-validation
fix-123-email-validation
fix_123_email_validation
fix/123-email-validation
feature-123-email-validation
email-validation-123

# Bad branch names - in any capitalization
123
123-fix
123_fix
123/fix
123-feature
fix-123
fix_123
fix/123
feature-123
JIRA-123
```
