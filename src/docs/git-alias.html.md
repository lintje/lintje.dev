---
layout: docs
title: "Git alias"
---

It's possible to set up an alias with Git to use `git lint` as the command instead, or any other alias you prefer.

Set up your alias with the following line.

```sh
git config --global alias.lint '!lintje'
```

You'll then be able to call it like the examples below and any other methods listed in [usage](#usage).

```sh
git lint
git lint main..develop
```
