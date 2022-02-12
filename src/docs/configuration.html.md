---
layout: docs
title: "Configuration"
---

Lintje does not have a configuration file where you can enable/disable/configure certain rules for an entire project.

Instead it's possible to [ignore specific rules per commit](#ignoring-rules-per-commit).

### Ignoring rules per commit

It's possible to ignore certain rules for a commit, but it's recommended to use this very infrequently. If you think Lintje should handle a certain scenario better, please [create an issue][issues] explaining your use case.

To ignore a rule in a specific commit, use the magic `lintje:disable` comment.

Start a new line (preferably at the end of the commit message) that starts with `lintje:disable` and continue specifying the rule you want to ignore, such as: `lintje:disable SubjectPunctuation`.

Example commit with multiple ignored rules:

```
This is a commit subject!!

This is a commit message line 1.
Here is some more content of the commit message is very long for valid reasons.

lintje:disable SubjectPunctuation
lintje:disable MessageLineTooLong
```

_(The above is a bad commit, please don't use the disabling of rules this way.)_

[issues]: <%= site.metadata.issue_tracker %>
