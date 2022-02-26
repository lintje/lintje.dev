---
title: "Branch rules"
description: "Read about Lintje's rules for Git branches. Descriptive branch names are important, so that people can identify the topic of the change by just the name alone."
---

The rules listed on this page are about the Git branch on which commits are made. Descriptive branch names are important, so that people can identify the topic of the change by just the name alone.

<%= toc %>

## BranchNameLength

<%= version_label "0.4.0" %>

The branch name is detected as too short. A branch name needs to be at least four characters.

```md
# Good branch names
main
develop
trunk
fix-email-validation

# Bad branch names
foo
wip
fix
bug
```

## BranchNameTicketNumber

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

## BranchNamePunctuation

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

## BranchNameCliche

<%= version_label "0.4.0" %>

The branch name is considered to be a cliché, it's overused and adds little meaning. This rule scans for branch names that only use two words to describe a change, usually "fix-bug" and "add_test" types of branch names. The words in the example below are the words it scans for.

To resolve this issue, expand the branch name to explain the change in more detail. Describe what type of bug was fixed and what type of change was made.

```md
# Bad
wip
wip-feature
wip_feature
wip/feature
fix
fix-bug
fixes-test
fixed-issue
fixing-build
add
add-file
adds-files
added-tests
adding-stuff
update
update-readme
updates-files
updated-tests
updating-stuff
change
change-readme
changes-files
changed-tests
changing-stuff
remove
remove-file
removes-files
removed-tests
removing-stuff
delete
delete-file
deletes-files
deleted-tests
deleting-stuff
...
```
