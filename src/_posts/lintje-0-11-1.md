---
layout: post
title: "Lintje 0.11.1: URL detection in MessageTicketNumber issue references"
date: 2022-10-06
description: "This is a small bug fix release to improve the URL detection in issue references scanned by MessageTicketNumber."
---

Lintje 0.11.1 is out now! This is a small bug fix release to improve the URL detection in issue references scanned by MessageTicketNumber.

## Changelog

Read all the changes in the changelog below.

### Fixed

- Detect issue references starting with "part of" for the [MessageTicketNumber]
  rule. The following now is detected as a link to an issue.

  > Part of https://website.com/org/repo/issues/123

---

- <%= release_link "0.10.0" %>
- View the <%= link_to "installation guide", "/docs/installation/" %> for installation methods and ways to upgrade.

[MessageTicketNumber]: /docs/rules/commit-message/#messageticketnumber
