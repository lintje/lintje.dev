---
layout: post
title: "Lintje 0.11.3: Fix MessageSkipBuildTag rule"
date: 2023-01-28
description: "This is a small bug fix release to fix the MessageSkipBuildTag rule."
---

Lintje 0.11.3 is out now! This is a small bug stop the MessageSkipBuildTag from triggering when the commit message body already contains a `[skip ci]` build tag.

## Changelog

Read all the changes in the changelog below.

### Fixed

- Skip the MessageSkipBuildTag rule when the commit message body already contains a skip CI tag: `[skip ci]`, `[ci skip]`, `[no ci]` or `***NO_CI***`.

---

- <%= release_link "0.11.3" %>
- View the <%= link_to "installation guide", "/docs/installation/" %> for installation methods and ways to upgrade.
