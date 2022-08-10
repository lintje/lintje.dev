---
name: SubjectPunctuation
type: error
---

<%= version_label "0.1.0" %>

The commit's subject starts or ends with punctuation. Subjects don't need to end with punctuation.

It may also be that a subject starts with an emoji, subjects also don't need to start with an emoji as a prefix of some kind.

```md
# Good
Fix incorrect email validation

# Bad
Fix incorrect email validation.
Fix incorrect email validation!
Fix incorrect email validation?
.Fix incorrect email validation
!Fix incorrect email validation
?Fix incorrect email validation
📺 Fix my television
👍 All good
🐞 Fix bug in email validation
```

Sometimes commits contain some tag for some machine to parse, like `[ci skip]` or `[skip ci]` to avoid building the commit on the Continuous Integration, and save some resources. This rule will trigger if this tag is part of the commit's subject. Instead move the tag to the body of the commit message. It's not relevant for the subject, and the space can instead be used for describe the change in more detail.
