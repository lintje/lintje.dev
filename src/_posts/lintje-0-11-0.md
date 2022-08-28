---
layout: post
title: "Lintje 0.11.0: Install Git hooks with Lintje"
date: 2022-09-11
description: "This release makes it easier to install Git hooks using Lintje. A new verbose mode helps break down commits to provide more context."
---

Lintje 0.11.0 is out now! This release makes it easier to install Git hooks using Lintje. A new verbose mode helps break down commits to provide more context.

## Install Git hooks with Lintje

The process of adding a Git hook for Lintje required some manual steps to make sure everything was set up correctly. This is now made easier with the [`--install-hook` CLI option][install hook].

```sh
# Only use one of these hooks
lintje --install-hook commit-msg  # Validate commits before they're saved
lintje --install-hook post-commit # Validate commits after they're saved
```

Two hook types are supported at this time: `commit-msg` and `post-commit`. Other types of hooks may be supported in the future. [Let me know which hook you would like to see supported.](/docs/support/)

## Verbose mode

Lintje ships with a [new verbose mode][verbose flag]. This verbose mode prints more output about the commits and branches it validates. It will print the breakdown of the parsed commits and branches, even when they were ignored.

## Rules can be ignored again

Lintje will now detect [ignored rules] again using the `lintje:disable` line in the commit message.

## Changelog

Read all the changes in the changelog below.

### Added

- Add [`--install-hook` CLI option][install hook]. Call Lintje with this option to install a
  Lintje in the selected Git hook.
  ```sh
  # This hook prevents making the commit if any issues are found
  lintje --install-hook commit-msg

  # This hook makes the commit even if Lintje finds issues
  # Amend the commit to update it and fix the issues
  lintje --install-hook post-commit
  ```
- Add [`--verbose` CLI option][verbose flag]. Print the parsed commit and branch before any
  issues that were found in it. This replaces the commit and branch output that
  printed the internal representation of these objects, when `--debug` was
  set.
- Print build target in `--version` CLI flag. When `lintje --version` is run it
  will now print the target for which it was built. This helps with debugging
  which release build was installed. The `lintje -V` shorthand will still only
  print the version number.

### Changed

- The [MessageTicketNumber] rule will no longer add an issue if a
  [SubjectTicketNumber] issue is already found. It will not hint about adding a
  ticket number to the message body, if one is present in the subject.
- The [MessageSkipBuildTag] rule will no longer add a hint if a
  [SubjectBuildTag] issue is already found. It will not hint about adding a "skip
  ci" build tag to the message body, if one is present in the subject.
- The [MessageLineLength] rule now detects more protocols as URLs like "ftp" and
  "ssh". Lines with such URLs will no longer trigger an issue about the line
  being too long.

### Fixed

- Fix detection of [ignored Lintje rules][ignored rules] in the commit's trailer lines section.
  Lines starting with `lintje:disable RuleName` are no longer ignored and the
  disabled rules will not trigger any validation.

---

- <%= release_link "0.10.0" %>
- View the <%= link_to "installation guide", "/docs/installation/" %> for installation methods and ways to upgrade.

[install hook]: /docs/git-hooks/
[ignored rules]: /docs/configuration/#ignoring-rules-per-commit
[verbose flag]: /docs/usage/#verbose-output
[SubjectTicketNumber]: /docs/rules/commit-subject/#subjectticketnumber
[SubjectBuildTag]: /docs/rules/commit-subject/#subjectbuildtag
[MessageTicketNumber]: /docs/rules/commit-message/#messageticketnumber
[MessageSkipBuildTag]: /docs/rules/commit-message/#messageskipbuildtag
[MessageLineLength]: /docs/rules/commit-message/#messagelinelength
