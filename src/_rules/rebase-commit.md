---
name: RebaseCommit
type: error
---

<%= version_label "0.1.0" %>
<a name="needsrebase"></a>

The commit is detected as a fixup, squash or amend commit. These commits communicate the intent to squash them into other commits during the next rebase using [Git's autosquash feature](https://git-scm.com/docs/git-rebase#Documentation/git-rebase.txt---autosquash).

These commits should not be send in for review in Pull Requests, and they should not be merged into main branches. Please rebase the branch before pushing or merging the branch.

```md
git checkout feature-branch
git rebase --interactive --autosquash main
```

- This rule was renamed from `NeedsRebase` to `RebaseCommit` in Lintje version 0.8.0.
- This rule also checks for amend commits since Lintje version 0.8.0.
