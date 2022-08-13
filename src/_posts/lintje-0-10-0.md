---
layout: post
title: "Lintje 0.10.0: Giving co-authors credit"
date: 2022-08-26
description: "Lintje 0.10.0 is out now! This release adds support for co-authors and sign offs, ignoring revert commits and improved help output."
---

Lintje 0.10.0 is out now! This release adds support for co-authors and sign offs, ignoring revert commits and improved help output.

## Co-authors and sign offs

When pairing together with someone on an issue there's only one person that can commit the final changes. Still, you want to give your pairing partner credit for this change. For this you can use the ["Co-authored-by" commit message trailer][co-author].

I've created commits with these co-author lines, only to find out they did not get any credit on GitHub. The co-author _need_ to be at the end of the commit message for them to get credited. If you write another paragraph below the trailer line, the co-author does not get any credit.

Introducing the "[MessageTrailerLine]" rule: make sure your co-authors are always listed at the end of the commit message body, and get the credit they deserve.

The MessageTrailerLine also detects "Signed-off-by" and "Helped-by" trailer lines.

[co-author]: https://docs.github.com/en/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/creating-a-commit-with-multiple-authors

## Ignoring revert commits

Reverting commits is something we do to undo previous mistakes. When running `git revert SHA` Git gives a pretty good commit message already, and often this message isn't changed. This revert commit can easily break rules like [SubjectLength], and I don't think that should matter that much. From this version on revert commits are not validated by Lintje.

## Improved output

Several rules have gotten improvements for the [help output](/docs/output/) they print. They will give better suggestions to remove or move content from the subject to the message or what else to change in the commit.

Suggestions with additions are now colored green, with removals colored yellow. Errors highlights are still colored orange. Additions will also always use the plus symbol (+) instead of the caret (^).

## Changelog

Read all the changes in the changelog below.

### Added

- Ignore Git revert commits made by `git revert`. These commits will no longer
  be validated by Lintje as they are usually generated and their messages not
  updated.
- Added commit message trailer support. Trailers are no longer considered part
  of the message body and do not count towards message length and other rules.
  Trailers are things like "Co-authored-by" and "Signed-off-by" lines at the
  end of the message body.
- Add [MessageTrailerLine] rule. This new rule checks if all "Co-authored-by",
  "Signed-off-by" and "Helped-by" lines are at the end of the message body. If
  they are not, GitHub and other tools will not recognize the line and will not
  credit to the co-author or recognize the sign off.

### Changed

- Color addition suggestions as green, previously cyan. The green color better
  communicates the suggestion is about an addition that should be made.
- Mark removal suggestions more clearly to differentiate them from errors.
  Instead of underlining with the caret symbol `^`, which errors also use, it
  will now underline with the dash symbol `-` and use the color yellow to
  highlight these changes.
- Mark addition suggestions more clearly with the plus symbol `+`, and in
  green. Additions previously used the caret symbol `^` and bright red color,
  also used by errors. It is now more clear the issue is suggesting adding
  something to the commit message.
- Show a suggestion in the [SubjectCapitalization] output to
  capitalize the first letter of the subject using the actual subject content.

### Fixed

- Remove unintended debug output on "Co-authored-by" line detection.

---

- <%= release_link "0.10.0" %>
- View the <%= link_to "installation guide", "/docs/installation/" %> for installation methods and ways to upgrade.

[SubjectLength]: /docs/rules/commit-subject/#subjectlength
[SubjectCapitalization]: /docs/rules/commit-subject/#subjectcapitalization
[MessageTrailerLine]: /docs/rules/commit-message/#messagetrailerline
