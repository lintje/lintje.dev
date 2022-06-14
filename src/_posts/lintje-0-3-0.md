---
layout: post
date: 2021-07-12
title: "Lintje 0.3.0 released!"
description: "Lintje 0.3.0 adds more rules to validate commit subjects. It caches more cliches, disallows prefixes and build tags in the subject."
---

More rules for commit subjects.

- Add SubjectBuildTag rule to check for "skip ci" tags in the subject. These
  tags should be moved to the message body.
- Add SubjectPrefix rule to explicitly check for prefixes in subjects, like
  "fix: bug", "fix!: bug", "fix(scope): bug", and suggest to remove them.
- Update SubjectCliche to catch more types of clichés, such as only "fix". The
  check is now also case insensitive, so "Fix", "fix" and "FIX" are all caught.

---

- <%= release_link "0.3.0" %>
- View the <%= link_to "installation guide", "/docs/installation/" %> for installation methods and ways to upgrade.
