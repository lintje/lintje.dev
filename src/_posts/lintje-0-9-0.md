---
layout: post
title: "Lintje 0.9.0: Lintje gets more precise!"
date: 2022-08-07
description: "Lintje gets more precise detecting ticket references and does not count them towards the minimum message body length."
---

Lintje gets more precise! Ticket references like "Fixes #123" matches full URLs now and is more accurately detecting shorthands like "org/repo#123". The [MessagePresence] rule does not count ticket references and "co-authored-by" lines towards the minimum required message length. It's no longer possible to only have a ticket reference as a message body.

This release also adds a new hint with the [DiffChangeset] rule that checks what files are committed to see if a [changeset file][changesets] is added or not.

Read the full list of changes below.

### Added

- Update the [SubjectTicketNumber] and [MessageTicketNumber] rules to also
  match full URLs to issues, and match shorthands like `#123` and
  `org/repo#123` more accurately.
- The [MessagePresence] rule checks if the commit message is only a reference to
  a ticket or issue number, e.g. a message that is only "Closes #123" is no
  longer valid. Some detail about the issue should also be recorded in the
  commit message itself, not just the linked issue.
- Add the [DiffChangeset] rule, which checks for the presence of a
  changeset file when the repository has a `.changeset` or `.changesets`
  directory. If found, it will give a hint to add a changeset to the commit.
  Learn more about [changesets].

### Changed

- Update the [MessageTicketNumber] rule to also recognize issue keywords like
  "part of issue", "part of epic" and "part of project".
- Improve error messages from Lintje. When Lintje is run in a directory that's
  not a Git repository it will now print a more to the point message with less
  detail. The detailed error message including which command was run with which
  arguments is available behind the `--debug` flag.
- Improve [MessagePresence] rule error message to more concise.
- Don't count line breaks towards the minimum [MessagePresence] character count.
- Show the whole message body as context in [MessagePresence] issues that are
  about message bodies that are too short. Since they are so short Lintje can
  print it in full. Previously it only showed the last line which did not
  provide enough context in some cases.
- Don't count references to issues and ticket numbers towards the minimum
  message body length in the [MessagePresence] rule, like "Closes #123".
- Don't count co-authored-by lines towards the minimum
  message body length in the [MessagePresence] rule, like
  "Co-authored-by: name <tom@tomdebruijn.com>".

---

- <%= release_link "0.9.0" %>
- View the <%= link_to "installation guide", "/docs/installation/" %> for installation methods and ways to upgrade.

[SubjectTicketNumber]: /docs/rules/commit-subject/#subjectticketnumber
[MessageTicketNumber]: /docs/rules/commit-message/#messageticketnumber
[MessagePresence]: /docs/rules/commit-message/#messagepresence
[DiffChangeset]: /docs/rules/commit-type/#diffchangeset
[changesets]: https://github.com/changesets/changesets
