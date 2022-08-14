---
title: "Lint commits during creation"
description: "Use Lintje with Git hooks to get instant feedback when you make commits. Shorten the feedback loop and improve commits immediately."
---

Git hooks allow you to run commands before saving a commit, pushing a branch, etc. You can run Lintje when these things happen to lint your commits.

## Adding a Git hook

To add a Git hook, run the following commands in each project you want to use Lintje.

```sh
# Linux/macOS example
echo "lintje --hook-message-file=\$1" >> .git/hooks/commit-msg
chmod +x .git/hooks/commit-msg
```

<%= aside do %>
  Each person in your team will need to configure Lintje locally this way. Git does not store hooks in the repository. If you want to set up a Git hook for all new repositories, please read the [about global Git hooks section](#global-git-hooks).
<% end %>

If Lintje finds an issue the commit is not saved. The message you entered is still available in the `.git/COMMIT_EDITMSG` file. Using this file you can continue writing your commit message with the following command:

```sh
git commit --edit --file=.git/COMMIT_EDITMSG
```

If you do not want Git to exit out of creating a commit, please read the [Validation without exiting the commit section](#validation-without-exiting-the-commit).

## Validation without exiting the commit

Personally, I don't like how Git hooks fails the commit process. It makes it harder to continue writing the commit with the original message. It also makes making [fixup commits] impossible, because of the [RebaseCommit rule].

Instead, I prefer not failing the commit hook. I'll amend the created commit afterwards to fix any issues that came up. The Git hook example below will have Lintje output the issues it found, but still make the commit.

```sh
echo "lintje --hook-message-file=\$1 || echo \"\\\nLintje failure\"" >> .git/hooks/commit-msg
chmod +x .git/hooks/commit-msg
```

When Lintje finds any issues, you can then amend the commit to fix the reported issues.

```sh
git commit --amend
```

## Global Git hooks

Git unfortunately does not support global hook that apply to all Git repositories on your machine. Instead, create new repositories with a [Git template](https://git-scm.com/docs/git-init#_template_directory) to immediately include this hook in new projects.

[RebaseCommit rule]: /docs/rules/commit-type/#rebasecommit
[fixup commits]: https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---fixupamendrewordltcommitgt
