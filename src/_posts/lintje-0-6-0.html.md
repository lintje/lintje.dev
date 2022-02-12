---
layout: post
date: 2021-11-02
title: "Lintje 0.6.0 released!"
description: "Lintje now highlights which parts of a Git commit triggered the rule, along with suggestions on how to resolve the issue!"
---

Lintje now highlights which parts of a Git commit triggered the rule, along with suggestions on how to resolve the issue!

Also in this release: improved Unicode support 🚀

- Improve Unicode support for SubjectLength and MessageLineLength rules.
    - Characters with accents such as `a̐` are no longer counted as two
      characters.
    - Double width characters now count towards a width of two.
    - Emoji with a larger display width are now counted with
      their display width. This means it's no longer possible to write a
      subject of 50 emoji in a subject, only 25 emoji that have a render with
      of two, for example.
- Improved violation messages.
    - When a violation of the Lintje rules are found the message that gets
      printed will includes more context about the problem it found. It will
      highlight where exactly the problem was detected in a commit subject,
      commit message, commit diff or branch name to make it easier to resolve
      the problem.
