---
title: "Philosophy"
description: "Lintje's philosophy is at the core of the project. It will improve your team's communication and make the project Git history useful to everyone."
---

Lintje is written to promote communication between people within Git commits. Lintje wants you to write detailed commit subjects and messages. Your team reading these commits during reviews and debug sessions 2+ months from now will thank you.

<%= toc %>

## What type of rules is Lintje configured for?

Lintje checks for commits like "Fix bug" and instead prefers commits that explain changes in more detail. Explain why the change was necessary, what alternatives were considered and why this solution was chosen. This will provide much needed context to future readers so they understand what kind of constraints the commit was made under.

Inspiration for Lintje's rules:

- [Git is about communication](https://tomdebruijn.com/posts/git-is-about-communication/) by Tom de Bruijn.
- [A Note About Git Commit Messages](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html) by Tim Pope.

Read the [rules pages](/docs/rules/) for all the rules Lintje checks and how to fix them.

## Workflow

Lintje does not enforce a particular workflow. Commits don't require a template. Commits don't need to be perfect on the first try, which is why I recommend [not exiting the commit process](/docs/git-hooks/#validation-without-exiting-the-commit) when Lintje encounters an issue.

You can make [atomic commits](https://en.wikipedia.org/wiki/Atomic_commit) or you can make no commits. Make as many "WIP" commits as needed while you're fixing a bug or working on a feature.

When it's time to share your work with your team, or push it to a public repository, go back to these "WIP" commits and __rewrite the Git history__. Rewriting the branch history you will squash commits, split commits and rewrite commit messages to tell a detailed story in smaller parts. This way the final result of your work is more readable by your team and any future debuggers.

## Git for machines

Lintje does not actively promote machine parsing of commit subjects and messages for the purposes of generating changelogs automatically.

The audiences of commits and changelogs are different. Commits are written for people working on a project and changelogs are written for people using the project. In my opinion a changelog entry should not be based on a Git commit, but instead be managed with another tool such as [Changesets](https://github.com/changesets/changesets), which can also generate changelogs automatically.
