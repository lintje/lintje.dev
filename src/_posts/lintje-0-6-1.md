---
layout: post
title: "Lintje 0.6.1 released!"
date: 2021-11-23
description: "Lintje 0.6.1 is out 🚀 Lintje will print less warnings on commits that need to be rebased. Git hook support works better with the `--verbose` flag and the different cleanup modes are supported better."
---

Lintje 0.6.1 is out 🚀 Lintje will prints less warnings on commits that need to be rebased. Git hook support works better with the `--verbose` flag and the different cleanup modes are supported better.

- Ignore other rules if a commit has a MergeCommit or NeedsRebase violation.
  When these violations occur the commit needs to be rebased, so any other
  issues will hopefully be resolved in the rebase, such missing message body,
  or subject length. This will reduce the number of violations printed and
  focus on the important violations.
- The Git scissor line (for cleanup mode scissors) will not be interpreted as
  the commit subject line, if it's the first line in a Git commit hook file. It
  will instead consider the commit as having an empty subject and message body.
  This will prevent any unexpected violations on the scissor line when the Git
  commit process is aborted by removing the subject and message body from the
  Git commit message file.
- The Git scissor line will be interpreted as the end of every commit message.
  This previously only applied for the scissors cleanup mode. This improves
  support for `git commit`'s `--verbose` flag and `--cleanup` option. In
  verbose mode the scissor line is also present in the Git commit default
  message content, but is not included in the committed message body.
- Don't consider trailing whitespace as part of the line length in the scissors
  cleanup mode.
- Improve leading empty line detection and ignore these lines in every cleanup
  mode except "verbatim". This way leading empty lines are not interpreted as
  subjects and Lintje won't print violations about those empty lines as
  subjects.
- Improve leading comment line detection and ignore these lines in the
  default/"strip" cleanup mode. This way leading comment lines are not
  interpreted as subjects and Lintje won't print violations about those
  subjects.

<%= release_link "0.6.1" %>
