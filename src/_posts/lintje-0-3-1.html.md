---
layout: post
date: 2021-07-15
title: "Lintje 0.3.1 released!"
description: "Version 0.3.1 is out with better support for GitLab and less failures on different types of local merge commits."
---

Version 0.3.1 is out with better support for GitLab and less failures on different types of local merge commits.

- Improve MergeCommit rule to fail on less types of merge commits. A local
  merge commit into the repository's base branch is accepted, but a merge
  commit merging a remote branch or two non-base-branch into one another are
  not. In the future this may warn on certain local merges again.
- Ignore merge commits for tags. These commits are local merges that will be
  ignored for checks for now. They may trigger the MergeCommit rule in the
  future, when local merges can be detected.
- Fix GitLab merge commit detection, to ignore those commits. It previously
  only scanned for Merge Request reference IDs, but now scans for the full
  `org/repo!id` reference used by GitLab in Merge Request merge commits.
- Better detect GitLab Merge Request references. Update the SubjectTicketNumber
  rule to also detect references to Merge Requests in GitLab that uses
  exclamation marks `!` instead of `#`.

<%= release_link "0.3.1" %>
