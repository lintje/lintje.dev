---
name: MergeCommit
type: error
---

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
