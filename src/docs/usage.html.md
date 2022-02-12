---
layout: docs
title: "Usage"
---

Lintje is a command line tool. After [installation] Lintje can be called with the `lintje` command.

It's recommended to add Lintje to the project Continuous Integration setup to lint the range of commits added by a Pull Request or push. See also the [automated review](/docs/automated-review.html) for more usage examples.

<%= toc %>

## Validating commits

Lintje accepts a range of commits to check as arguments. If no arguments are given, Lintje will _only_ check the last commit on the current branch. By default Lintje will also validate the [current branch](#branch-validation).

To validate a specific Git commit, pass in the commit SHA or selectors like `HEAD~3`. Any valid `git log` commit selector will work.

```
# Lint the most recent commit on the current branch:
lintje
# Which is the same as:
lintje HEAD

# Lint a specific commit:
lintje 3a561ef766c2acfe5da478697d91758110b8b24c
```

## Validating commit ranges

Lintje can also validate a range of commits, like [all commits in a Pull Request][automated review]. The argument given to the `lintje` command should the range of commits that should be validated. Any valid `git log` commit range will work.

```
# Lint the last 5 commits:
lintje HEAD~5..HEAD

# Lint the difference between two branches:
lintje main..develop
```

## Branch validation

<%= version_label "0.4.0" %>

By default Lintje will validate the branch according to the [branch rules](/docs/rules/branch.html). This validation type can be disabled by calling lintje with the `--no-branch` flag.

```sh
# Run Lintje without branch validation
lintje --no-branch
```

## Commit message file validation

<%= version_label "0.1.0" %>

To accommodate for the "commit-msg" Git hook, the `--hook-message-file` option allow you to configure where Lintje should read the commit message from. This is primarily used for the [Git hook setup](/docs/git-hooks.html).

```sh
# Validate a specific commit message file
lintje --hook-message-file .git/COMMIT_MESSAGE
```

## Colorized output

<%= version_label "0.7.0" %>

Lintje can print the validation output with color to highlight important parts of the validation output.

At this time Lintje will not print the validation result with colorized output. When this feature becomes more stable it will be turned on by default.

```sh
# Print output with color
lintje --color

# Print output without color (default)
lintje --no-color
```

## Exit codes

Lintje will exit with the following status codes in these situations:

- `0` (Success) - No issues have been found. The commit is accepted.
- `1` (Failure) - One or more issues have been found. The commit is not accepted.
- `2` (Error) - An internal error occurred and the program had to exit. This is probably a bug, please report it in the [issue tracker][issues].

[issues]: <%= site.metadata.issue_tracker %>
[installation]: /docs/installation
[automated review]: /docs/automated-review.html
