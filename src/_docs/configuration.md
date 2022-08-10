---
title: "Configuration"
description: "Lintje is config free by design, but can be customized per commit. Learn more about how to configure Lintje for each commit it validates."
---

<%= toc %>

## Configuring rules

Lintje does not have a configuration file where you can enable/disable/configure certain rules for an entire project.

Instead it's possible to [ignore specific rules per commit](#ignoring-rules-per-commit).

There are separate flags available on the CLI to [control branch validation](/docs/usage/#branch-validation), [hide hints](/docs/usage/#hints), [control colorized output](/docs/usage/#colorized-output) and [select which commits to validate](/docs/usage/#validating-commits).

### Ignoring rules per commit

It's possible to ignore certain rules for a commit, but it's recommended to use this very infrequently. If you think Lintje should handle a certain scenario better, please [create an issue][issues] explaining your use case.

To ignore a rule in a specific commit, use the magic `lintje:disable` comment.

Start a new line (preferably at the end of the commit message) that starts with `lintje:disable` and continue specifying the rule you want to ignore, such as: `lintje:disable SubjectPunctuation`. The name of the rule to ignore matches with the rule name in the [rules table](/docs/rules/#rules).

Example commit with multiple ignored rules:

```
This is a commit subject!!

This is a commit message line 1.
Here is some more content of the commit message is very long for valid reasons.

lintje:disable SubjectPunctuation
lintje:disable MessageLineTooLong
```

_(The above is a bad commit, please don't use the disabling of rules this way.)_

## Options file

<%= version_label "0.8.0" %>

Lintje supports an options file to specify default options given to Lintje every time it's executed. This way you don't need to specify `--no-color` or `--no-hints` every time you run Lintje.

A list of [available CLI flags and options](/docs/usage/) can be found on the usage page. Do be mindful of which CLI options are configured in this file as not all are meant to be used for every time Lintje is run, like `--help`, `--version` and `--hook-message-file`.

The location of the options file can be specified with the `LINTJE_OPTIONS_PATH` environment variable. This path can be an absolute or relative path.

```sh
# Example for Linux/macOS/etc
export LINTJE_OPTIONS_PATH="$HOME/config/lintje/options.txt"
```

In this options file, specify one or more CLI flags or options per line.

```sh
--no-color
--no-hints
```

Example with all flags on one line:

```sh
--no-color --no-hints
```

Lines starting with the number symbol (`#`) are ignored and can be used for comments.

```sh
--no-color
# My projects do not need branch validation
--no-branch
```

[issues]: <%= site.metadata.issue_tracker %>
