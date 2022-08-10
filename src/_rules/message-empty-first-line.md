---
name: MessageEmptyFirstLine
type: error
---

<%= version_label "0.2.0" %>

The line in the commit message body after the subject is not empty. If the line after the subject is not empty, it is considered part of the subject.

This is the preferred format of a Git commit:

```md
Subject line

First message line below an empty line.
```
