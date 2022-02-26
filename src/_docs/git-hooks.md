---
title: "Git hooks"
description: "Learn how to set up Git hooks to validate commits while making them."
---

To lint the commit locally immediately after writing the commit message, use a Git hook. To add it, run the following in each project you want to use Lintje. If you want to set up a Git hook for all your projects, please read the [about global Git hooks section](#about-global-git-hooks).

```sh
echo "lintje --hook-message-file=\$1" >> .git/hooks/commit-msg
chmod +x .git/hooks/commit-msg
```

If Lintje fails the commit is not saved. The message you entered is still available in `.git/COMMIT_EDITMSG` and you can restart your commit message with:

```sh
git commit --edit --file=.git/COMMIT_EDITMSG
```

If you do not want Git to exit out of creating a commit, please read the [Validation without exiting the commit section](#validation-without-exiting-the-commit).

## About global Git hooks

Git unfortunately does not support global hook that apply to all Git repositories on your machine. Instead create new repositories with a [Git template](https://git-scm.com/docs/git-init#_template_directory) to immediately include this hook in new projects.

## Validation without exiting the commit

Personally I don't like how it fails the commit process and makes the commit message harder to reach to use again. It also makes making fixup commits really difficult. Instead I prefer not failing the commit hook and amending the commit afterwards to fix any issues that came up. The example below will have Lintje output the issues it found, but still make the commit. You can then amend the commit to fix any issues it found afterwards.

```sh
echo "lintje --hook-message-file=\$1 || echo \"\\\nLintje failure\"" >> .git/hooks/commit-msg
chmod +x .git/hooks/commit-msg
```
