---
layout: post
date: 2021-07-11
title: "Lintje 0.2.0 released!"
description: "More rules and more checks for existing rules were added."
---

More rules and more checks for existing rules were added.

- Add MessageEmptyFirstLine rule that checks if the line after the subject line
  is empty. If it's not empty that line is considered part of the commit's
  subject.
- Validate commits without a subject. Previously these commits would be ignored
  and Lintje would not validate them, missing very undescriptive commits.
- Add Alpine Linux musl compatible build.
- Don't validate commit's which are squash commits from GitHub Pull Requests.
  It's not recommended to rewrite merge commits after they've been made, so
  they will be ignored.
- Expand SubjectPunctuation rule to also scan for punctuation at the start of
  the subject, not just the end. Subjects should not start with punctuation.
- Expand SubjectPunctuation rule to also scan for emoji at the start of
  the subject. Subjects should not start with an emoji as a prefix.
- Expand SubjectPunctuation rule to check for more Unicode punctuation.
- Add Microsoft Windows release build.

<%= release_link "0.2.0" %>