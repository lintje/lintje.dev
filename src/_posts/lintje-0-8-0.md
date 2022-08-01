---
layout: post
title: "Lintje 0.8.0: Color by default, options file and more hints!"
date: 2022-08-01
description: "Lintje is now available in a small Docker image for easier portability. This release also contains minor rule improvements."
---

This Lintje 0.8.0 release turns on color by default! Configure how Lintje is called with [your own options file][options file] so you no longer have to specify the CLI options every time. There's also a new hint for adding `[skip ci]` to your commit message when only certain text files have been changed.

Read the full list of changes below.

## Added

- Link to Lintje.dev from the issue output in the terminal for more
  documentation and examples on the website.
- Support an options file with the `LINTJE_OPTIONS_PATH` environment
  variable. This options file will be read every time Lintje is run, so there's
  no more need to specify flags on the CLI every time manually. Set the
  `LINTJE_OPTIONS_PATH` to a file path containing a options text file.
  For example `/Users/tombruijn/config/lintje/options.txt` file containing the
  content below.
  ```
  --color
  --no-hints
  ```
  More information can be found on the [options file documentation
  page][options file].
- Add the [MessageSkipBuildTag hint rule][MessageSkipBuildTag] to suggest
  adding a "[skip ci]" build tag when a commit only changes plain text files
  that commonly don't require a test suite, deploy or other automatic build to
  be run. Saves on resources, time and money. Files that are checked include:
  README, LICENSE and CODE_OF_CONDUCT.
- Recognize "amend!" commits, like "fixup!" commits, as to be rebased commits
  and trigger the [RebaseCommit rule][RebaseCommit].

## Changed

- Add an extra line between message body and moved ticket number at the end of
  the body in [SubjectTicketNumber] suggestions.
- [Color output] is turned on by default if the system supports it.
- Change the suggestions symbol from a dash (-) to a plus (+) to better
  indicate the suggestion is an addition.
- Rename the NeedsRebase rule to [RebaseCommit] to match naming with
  [MergeCommit rule][MergeCommit] to indicate the type of commit rather than
  the action that needs to be taken to resolve it. The NeedsRebase name can
  still be used as an alias to disable the RebaseCommit rule with
  `lintje:disable NeedsRebase`. This alias will be removed eventually.

## Fixed

- Better support for just initialized repositories. Lintje will no longer print
  an error for repositories with one commit.

---

- <%= release_link "0.8.0" %>
- View the <%= link_to "installation guide", "/docs/installation/" %> for installation methods and ways to upgrade.

[options file]: /docs/configuration/#options-file
[Color output]: /docs/usage/#colorized-output
[SubjectTicketNumber]: /docs/rules/commit-subject/#subjectticketnumber
[MessageSkipBuildTag]: /docs/rules/commit-message/#messageskipbuildtag
[RebaseCommit]: /docs/rules/commit-type/#rebasecommit
[MergeCommit]: /docs/rules/commit-type/#mergecommit
