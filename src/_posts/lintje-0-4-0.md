---
layout: post
date: 2021-10-08
title: "Lintje 0.4.0 released!"
description: "Branch name validation is now in Lintje! Check out all the improvements in version 0.4."
---

Branch name validation is now in Lintje! Check out all the improvements in version 0.4.

- Better handling of Git commands when they fail. Print an error message when a
  Git command fails (like calling `git log`) and when Git is not
  installed.
- Improve SubjectCliche rule to catch plurals of words (e.g. "fix tests") and
  check for more subject prefixes like "add fix", "update code", "remove file".
- Improve wording of the SubjectCapitalization violation message.
- Add branch name validation.
    - Can be disabled with the `--no-branch` flag.
    - New BranchNameTicketNumber rule to scan branch names for ticket numbers,
      and `fix-###` formats. Ticket numbers are accepted as long as the name is
      more than a combination of a prefix and number.
    - New BranchNameLength rule checks for a minimum branch name length of four
      characters.
    - New BranchNamePunctuation rule checks for a branch names starting or
      ending with punctuation.
    - New BranchNameCliche rule checks for a branch names is a cliché.
      "fix-bug" or "add-test" branches are no longer accepted.
- Fix emoji false positives in SubjectPunctuation. It will no longer match on
  numbers and * and # as emoji at the start of a subject.
- Ignore commits made by GitHub bots. Project members can't always ensure that
  all bots follow the rules set by Lintje.
- Add Debian installation method. More information in the
  [installation docs](/docs/installation/).
- Print the singular "violation" label when Lintje only finds one violation.
- Print number of ignored commits, if any commits are ignored.

---

- <%= release_link "0.4.0" %>
- View the <%= link_to "installation guide", "/docs/installation/" %> for installation methods and ways to upgrade.
