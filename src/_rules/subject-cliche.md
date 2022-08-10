---
name: SubjectCliche
type: error
---

<%= version_label "0.1.0" %>

The commit's subject is considered to be a cliché, it's overused and adds little meaning. This rule scans for subjects that only use two words to describe a change, usually "fix bug" and "update code" types of subjects. The words in the example below are the words it scans for.

To resolve this issue, expand the subject to explain the change in more detail. Describe what type of bug was fixed and what type of change was made.

```md
# Bad
WIP
Fix
Fix bug
Fixes test
Fixed issue
Fixing build
Add
Add file
Adds files
Added tests
Adding stuff
Update
Update README
Updates files
Updated tests
Updating stuff
Change
Change README
Changes files
Changed tests
Changing stuff
Remove
Remove file
Removes files
Removed tests
Removing stuff
Delete
Delete file
Deletes files
Deleted tests
Deleting stuff
...
```
