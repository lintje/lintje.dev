---
layout: post
title: "Lintje 0.7.1 released!"
date: 2022-06-20
description: "Lintje is now available in a small Docker image for easier portability. This release also contains minor rule improvements."
---

## Added

- Docker image: Lintje ships in a Docker image now available on Docker Hub. See the [Docker image installation instructions](/docs/installation/docker-image/) for more information.
- Check commit messages for "Part of #123" substring for [MessageTicketNumber hint](/docs/rules/commit-message/#messageticketnumber). This is also accepted along with "Fixes #123" and "Closes #123".

## Changed

- All documentation for Lintje has been moved from the repository to the [Lintje.dev website](/docs/).
- Print CLI flags in a most common usage based order. Flags to are opposites of each other, like `--color` and `--no-color`, are grouped together.

---

- <%= release_link "0.7.1" %>
- View the <%= link_to "installation guide", "/docs/installation/" %> for installation methods and ways to upgrade.
