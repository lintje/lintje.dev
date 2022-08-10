---
name: SubjectCapitalization
type: error
---

<%= version_label "0.1.0" %>

The commit's subject doesn't start with a capital letter. Use a capital letter to start the subject.

```md
# Good
Fix incorrect email validation

# Bad
fix incorrect email validation
```

### Notes about capitalization

- This rule is skipped if a [RebaseCommit] issue is found. To fix a RebaseCommit issue the commit needs to be rebased into the commit it's marked to fixup or squash, and there will be no need to fix the capitalization.*
