---
name: SubjectWhitespace
type: error
---

<%= version_label "0.1.0" %>

The commit's subject starts with a whitespace (space, tab, etc). Remove this leading whitespace from the subject.

```md
# Good
Fix incorrect email validation

# Bad
 Fix incorrect email validation
  Fix incorrect email validation
<TAB>Fix incorrect email validation
```
