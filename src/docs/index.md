---
layout: docs
title: "Documentation"
---

Welcome to Lintje! A Git linter made for people. Lintje will help you and your team write better commit messages, branch and Pull Requests. Add Lintje to your local setup and the project's Continuous Integration to make sure everyone is following the same rules.

Lintje doesn't want to get in your way and does not enforce a strict Git commit message template. Instead it will report the problems it may finds and provide some hints of things that are often forgotten.

This documentation section will give you all the information you need to get started, along with some useful usage examples. Use the side bar on the left (or at the bottom of this page) to read more about Lintje. Unsure where to start? Start at the top with [Usage](/docs/usage.html).

If you need help, have any questions, feature requests or any feedback, please [contact me](/docs/support.html).

## Example Lintje output

Lintje has descriptive output to helps you recognize issues more easily and know how to fix them.

```
$ lintje
SubjectCliche: The subject does not explain the change in much detail
  9a2ae29:1:1: Fix bug
    |
  1 | Fix bug
    | ^^^^^^^ Describe the change in more detail

MessagePresence: No message body was found
  9a2ae29:3:1: Fix bug
    |
  1 | Fix bug
  2 |
  3 |
    | ^ Add a message body with context about the change and why it was made

BranchNameTicketNumber: A ticket number was detected in the branch name
  Branch:1: fix-123
  |
  | fix-123
  | ^^^^^^^ Remove the ticket number from the branch name or expand the branch name with more details

1 commit and branch inspected, 3 issues detected
```
