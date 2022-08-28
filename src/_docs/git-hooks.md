---
title: "Lint commits during creation"
description: "Use Lintje with Git hooks to get instant feedback when you make commits. Shorten the feedback loop and improve commits immediately."
---

Git hooks allow you to run commands before saving a commit, after saving a commit, pushing a branch, etc. You can run Lintje when these things happen to lint your commits.

<%= aside do %>
  Each person in your team will need to configure Lintje locally on their own. Git does not store hooks in the repository config that gets shared.
<% end %>

<%= toc %>

## Adding a Git hook

### Validate before saving a commit

Use the installer below to add a Git hook that validates the commit right before it's saved. Run this command in each project you want to use Lintje.

```sh
lintje --install-hook commit-msg
```

<%= aside do %>
  #### Lintje 0.10 and older

  If you use Lintje version 0.10 or older, add the hook manually. The `lintje --install-hook` option was added in Lintje version 0.11.

  ```sh
  # Linux/macOS example
  echo "lintje --hook-message-file=\$1" >> .git/hooks/commit-msg
  chmod +x .git/hooks/commit-msg
  ```
<% end %>

If Lintje finds one or more issues, the commit is not saved. The message you entered is still available in the `.git/COMMIT_EDITMSG` file. Using this file you can continue writing your commit message with the following command:

```sh
git commit --edit --file=.git/COMMIT_EDITMSG
```

If you do not want Git to stop creating a commit, please read about validating commits [after saving a commit](#validate-after-saving-a-commit).

### Validate after saving a commit

Personally, I don't like how the Git `commit-msg` hook fails the commit process if any issues are found. It requires extra steps to continue writing the commit with the original message. It also makes making [fixup commits] impossible, because of the [RebaseCommit rule].

Instead, I prefer using the `post-commit` hook. If any issues are reported by Lintje, you can amend the commit message afterwards. Along with [automated review in Continuous Integration](/docs/automated-review/) you can make sure no invalid commits get merged.

Use the installer below to add a Git hook that validates the commit right after it's saved. Run this command in each project you want to use Lintje.

```sh
lintje --install-hook post-commit
```

<%= aside do %>
  #### Lintje 0.10 and older

  If you use Lintje version 0.10 or older, add the hook manually. The `lintje --install-hook` option was added in Lintje version 0.11.

  ```sh
  echo "lintje" >> .git/hooks/post-commit
  chmod +x .git/hooks/post-commit
  ```
<% end %>

When Lintje finds any issues, you can then amend the commit to fix the reported issues.

```sh
git commit --amend
```

## Global Git hooks

Git unfortunately does not support global hook that apply to all Git repositories on your machine. You'll need to use the commands described above to configure existing repositories. For new repositories it's possible to preconfigure hooks with a [Git template](https://git-scm.com/docs/git-init#_template_directory).

[RebaseCommit rule]: /docs/rules/commit-type/#rebasecommit
[fixup commits]: https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---fixupamendrewordltcommitgt
