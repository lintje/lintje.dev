---
layout: docs
title: "Philosophy"
description: "Read more about Lintje's philosophy and why the rules are the way they are."
---

Lintje is written to promote communication between people within Git commits. Lintje wants you to write detailed commit subjects and messages. Your team reading these commits during reviews and debug sessions 2+ months from now will thank you.

<%= toc %>

## What type of rules is Lintje configured for?

Lintje checks for commits like "Fix bug" and instead prefers commits that explain changes in more detail. Explain why the change was necessary, what alternatives were considered and why this solution was chosen. This will provide much needed context to future readers so they understand what kind of constraints the commit was made under.

Inspiration for Lintje's rules:

- [Git is about communication](https://tomdebruijn.com/posts/git-is-about-communication/) by Tom de Bruijn.
- [A Note About Git Commit Messages](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html) by Tim Pope.

Read the [rules pages](/docs/rules) for all the rules Lintje checks and how to fix them.

## Git for machines

Lintje does not actively promote machine parsing of commit subjects and messages for the purposes of generating changelogs automatically.

The audiences of commits and changelogs are different. Commits are written for people working on a project and changelogs are written for people using the project. In my opinion a changelog entry should not be based on a Git commit, but instead be managed with another tool such as [Changesets](https://github.com/atlassian/changesets), which can also generate changelogs automatically.
