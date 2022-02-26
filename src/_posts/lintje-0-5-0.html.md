---
layout: post
date: 2021-10-22
title: "Lintje 0.5.0 released!"
description: "Lintje now highlights which parts of a Git commit triggered the rule, along with suggestions on how to resolve the issue!"
---

Lintje now checks for empty commits in version 0.5.0! It also show less issues that have the same root cause to let you focus on what to fix first.

- Ignore SubjectLength rule if the subject already has a SubjectCliche
  violation. This reduces the number of violations that are printed when a
  SubjectCliche violation means writing a longer subject anyway.
- Ignore SubjectCapitalization and MessagePresence rules if the subject already
  has a NeedsRebase violation. To fix a NeedsRebase violation the commit needs
  to be rebased into the commit it's marked to fixup or squash, and there will
  be no need to fix the capitalization or add a message body.
- Add DiffPresence rule. This rule whether or not the commit has any changes or
  not. When a commit is empty, it will print a violation.
- Improve SubjectLength violation message when the subject is completely empty.
- Remove error messages from output when the commit subject is empty.
- Match more build tags in the SubjectBuildTag rule. It now also matches all
  tags that match the format of "[skip *]" and "[* skip]", rather than a
  previously fixed list of build tags.
- Match fewer substrings as ticket numbers, strings like "A-1" no longer
  matches.
- Ignore SubjectCapitalization rule if the subject already has a SubjectPrefix
  violation. This reduces the number of violations that are printed when a
  prefix is found in the commit, which is the violation that takes priority.

<%= release_link "0.5.0" %>
