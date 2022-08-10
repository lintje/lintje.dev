---
name: DiffPresence
type: error
---

<%= version_label "0.5.0" %>

The commit is detected as having no file changes, it's an empty commit. Avoid empty commits in the Git history. Empty commits can be left over after a rebase after all its changes have been applied already in another commit.

Add the intended files changes to the empty commit, or remove the commit from the Git history to fix this issue.
