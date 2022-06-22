---
title: "Getting started"
description: "Get started with using Lintje as the Git Linter in your projects. Improve your team's communication in Git and make your project's Git history finally useful."
---

<%= toc %>

## Installing Lintje

To use Lintje, you must first [install it](/docs/installation/). This can be done with a variety of package manager or by manually downloading and installing Lintje.

After installation, it should be a matter of running `lintje` in your Git repository.

```
$ lintje
```

## Usage and examples

If you first want to get an idea of how Lintje works, check out the [usage page](/docs/usage/). This usage page also explains all the different options that are available in Lintje. Not to be confused with [configuration](/docs/configuration/), as Lintje does not have a lot of configuration by design.

## Lintje's rules

The rules Lintje checks for can be found in the [rules section](/docs/rules/) of the documentation, split up per element of Git (subject, message, type and branches).

### Philosophy

Want to know more why Lintje's rules are the way they are? In the [philosophy section](/docs/philosophy/) the rules are explained in more detail, but in short: Lintje doesn't want to get in your way and does not enforce a strict Git commit message template. Instead it will report the problems it may finds and provide some hints of things that are often forgotten.

## Automated reviews

After trying out Lintje and deciding to continue using it, consider adding it to your [Continuous Integration set up](/docs/automated-review/). By adding this automated check, you can be sure everyone on the team is following the same rules and writes better commits.

## Need help or have questions?

If you need any help getting started with Lintje, please check out the [support page](/docs/support/) for the best way to reach me.
