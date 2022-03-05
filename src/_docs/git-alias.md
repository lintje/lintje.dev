---
title: "Git alias"
description: "Learn how to set up a Git alias to use in your workflow."
---

It's possible to set up [an alias in Git](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases) to use `git lint` as the command instead, or any other alias you prefer.

Set up your alias with the following line.

```sh
git config --global alias.lint '!lintje'
```

You'll then be able to call it like the examples below and any other methods listed on the [usage page](/docs/usage).

```sh
git lint
git lint main..develop
```
