---
layout: post
title: "Lintje 0.11.2: GitHub Actions Pull Request support"
date: 2022-10-15
description: "This is a small bug fix release to support GitHub Actions Pull Request events."
---

Lintje 0.11.2 is out now! This is a small bug fix release to support GitHub Actions Pull Request events in the [Lintje GitHub Action].

## Changelog

Read all the changes in the changelog below.

### Fixed

- Ignore "Merge into" commits. GitHub Actions creates merge commits for Pull Requests that do not need to be validated.

---

- <%= release_link "0.11.2" %>
- View the <%= link_to "installation guide", "/docs/installation/" %> for installation methods and ways to upgrade.

[Lintje GitHub Action]: https://github.com/lintje/action
