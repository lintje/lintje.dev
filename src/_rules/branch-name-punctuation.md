---
name: BranchNamePunctuation
type: error
---

<%= version_label "0.4.0" %>

The branch name starts or ends with punctuation. Branch names should not use punctuation this way.

```md
# Good branch names
fix-email-validation
fix_email_validation
feature/email-validation

# Bad branch names
fix-bug!
fix-bug.
fix-bug'
fix-bug"
!fix-bug
-fix-bug
_fix-bug
~fix-bug
(JIRA-123)
[JIRA-123]
```
