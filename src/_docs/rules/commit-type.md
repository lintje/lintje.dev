---
title: "Commit type rules"
description: "Read about Lintje's rules for differen types of Git commits. These commits can be things like merge commits, or fixup and squash commits."
---

The rules listed on this page are about the nature of the Git commit. These commits can be things like merge commits, or fixup and squash commits.

<%= toc %>

## DiffPresence

<%= error_label %>
<%= version_label "0.5.0" %>

The commit is detected as having no file changes, it's an empty commit. Avoid empty commits in the Git history. Empty commits can be left over after a rebase after all its changes have been applied already in another commit.

Add the intended files changes to the empty commit, or remove the commit from the Git history to fix this issue.

## MergeCommit

<%= error_label %>
<%= version_label "0.1.0" %>

The commit is detected as a merge commit, which is a commit merging one branch into another. Prefer rebasing feature branches instead of merging base branches back into them. These commits don't communicate anything meaningful other than when a person merged changes locally.

Currently only one scenario triggers this rule: when a remote branch is merged into a local branch.

```md
# Merge commit merging a remote branch into a local branch
Merge branch 'develop' of github.com/org/repo into develop
```

When pulling local changes that would create a merge commit, rebase the local changes on the remote changes instead.

```md
# Checkout the branch to pull updates for
git checkout feature-branch
# Rebase local changes on the remote's changes
git pull --rebase origin feature-branch
```

To avoid making these types of commits I recommend configuring a pull strategy in Git. Either use the `pull.ff only` or `pull.rebase` strategy.

```md
# Block pulls that would create a merge commit
# With this config you'll need to pull rebase the remote changes
git config --global pull.ff only

# Automatically rebase local changes on remote changes when using git pull
git config --global pull.rebase true
```

This rule will also try to trigger on local merge commits in the future.

### Notes about merge commits

Merge commits that merge local branches/tags into the repository's branches do not fail under this rule, they are currently ignored, but may fail on this rule in the future.

Merge commits made when merging Pull and Merge requests will not fail on this rule, these commits are ignored entirely. These commits communicate when a Pull/Merge request was accepted and merged into the base branch. This includes commits made by GitHub's "squash and merge" merge strategy.

## NeedsRebase

<%= error_label %>
<%= version_label "0.1.0" %>

The commit is detected as a fixup or squash commit. These commits communicate the intent to squash them into other commits during the next rebase. These commits should not be send in for review in Pull Requests, and they should not be merged into main branches.

```md
git checkout feature-branch
git rebase --interactive --autosquash main
```
