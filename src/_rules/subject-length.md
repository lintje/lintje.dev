---
name: SubjectLength
type: error
---

<%= version_label "0.1.0" %>

The commit's subject is considered too short or too long.

Short commit subjects like "WIP" and "Fix" don't explain the change well enough. Don't be afraid to dive into a little bit more detail to explain the change.

The commit's subject should be a maximum of 50 characters long. If the subject is longer than 50 characters, reword the subject to fit in the maximum subject length. Use the commit's message body to explain the change in greater detail.

```md
# Good
Fix incorrect email validation

# Bad - too short
WIP
wip
Fix

# Bad - too long
One day I woke up and found the solution to this year old bug, the solution...
```

### Notes about subject length

- This rule is skipped if a [SubjectCliche](#subjectcliche) issue is found.
- Certain characters like emoji are counted as multiple characters in this rule. Read more about [Unicode support][unicode].
