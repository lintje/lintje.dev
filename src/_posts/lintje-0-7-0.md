---
layout: post
title: "Lintje 0.7.0 released!"
date: 2022-03-15
description: "Errors now show suggestions on how to resolve some issues, new suggestions show things you may forget and other improvements in Lintje 0.7.0."
---

## Added

- Introducing suggestions! Lintje will print more detailed hints to resolve
  errors. Rules that have been updated with suggestions are the
  SubjectTicketNumber and SubjectBuildTag rules.
  ```
  SubjectTicketNumber: The subject contains a ticket number
    9aa9ca2:1:10: Fix bug. Closes #123
      |
    1 | Fix bug. Closes #123
      |          ^^^^^^^^^^^ Remove the ticket number from the subject
     ~~~
    9 | Closes #123
      | ----------- Move the ticket number to the message body
  ```
- Introducing hints! Lintje will print messages for issues that are not
  necessarily errors with the new MessageTicketNumber rule, but reminders to
  add ticket numbers to the commit message body. Hints can be turned off with
  the `--no-hints` flag.
  ```
  MessageTicketNumber: The message body does not contain a ticket or issue number
    9aa9ca2:10:1: Commit subject
       |
     8 | Last line of the current commit message body.
     9 |
    10 | Fixes #123
       | ---------- Consider adding a reference to a ticket or issue
  ```
- Add color to output. Highlight important output labels, such as rule names,
  the underlining, and the result status. Experimental color output can be
  enabled with the new `--color` flag.

## Changed

- Change "violations" to "issues" in preparation for different types issues
  Lintje can return in the future.

## Fixed

- Improve output when a Git error is encountered.
- Reduce false positive detection for ticket numbers in branch names. Branch
  names with version numbers in them, like `ruby-3` and `elixir-1.12`, are now
  valid.

---

- <%= release_link "0.7.0" %>
- View the <%= link_to "installation guide", "/docs/installation" %> for installation methods and ways to upgrade.
