---
title: "Using a Git alias with Lintje"
description: "Prefer using Git aliases for everything you do in Git? Use a Git alias to personalize how you call on Lintje on your computer."
---

It's possible to set up [an alias in Git](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases) to use `git lint` as the Lintje command. Any other alias you prefer is also possible.

Set up your alias with the following command.

```sh
git config --global alias.lint '!lintje'
```

<%= aside do %>
  The second part of the `alias.lint` is the command you will run with `git`. For example: `alias.validate` becomes `git validate` as your alias.
<% end %>

You'll then be able to call it like the examples below and any other methods listed on the [usage page](/docs/usage/).

```sh
git lint
git lint main..develop
```
