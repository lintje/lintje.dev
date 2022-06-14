---
title: "Git alias"
description: "Prefer using Git aliases for everything you do in Git? Use a Git alias to personalize how you call on Lintje on your computer."
---

It's possible to set up [an alias in Git](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases) to use `git lint` as the command instead, or any other alias you prefer.

Set up your alias with the following line.

```sh
git config --global alias.lint '!lintje'
```

You'll then be able to call it like the examples below and any other methods listed on the [usage page](/docs/usage/).

```sh
git lint
git lint main..develop
```
