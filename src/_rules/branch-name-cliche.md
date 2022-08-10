---
name: BranchNameCliche
type: error
---

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
