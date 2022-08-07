---
title: "Commit message rules"
description: "Lintje's rules for Git commit messages. These rules are made to improve Git commit messages and the format in which they are written."
---

The rules listed on this page are about the Git commit message. Descriptive commit messages are important during reviews and whenever someone looks back and has found a commit to contain a relevant change.

Good commit messages explain what the problem was that was solved, why the change was needed and what alternatives were considered. This information will give the reader the necessary context to leave a proper review or understand the constraints under which the commit was originally made.

<%= toc %>

## MessageEmptyFirstLine

<%= error_label %>
<%= version_label "0.2.0" %>

The line in the commit message body after the subject is not empty. If the line after the subject is not empty, it is considered part of the subject.

This is the preferred format of a Git commit:

```md
Subject line

First message line below an empty line.
```

## MessagePresence

<%= error_label %>
<%= version_label "0.1.0" %>

The commit's message body is empty or too short. Add a message body to the commit to elaborate on _why_ the change was necessary, what alternatives were considered and why this particular implementation was chosen as a solution.

Ticket references ("Fixes #123") and ["co-authored-by" lines](https://docs.github.com/en/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/creating-a-commit-with-multiple-authors) do not count towards the required message minimal length.

### Notes about messages presence

- This rule is skipped if a [NeedsRebase] issue is found. To fix a NeedsRebase issue the commit needs to be rebased into the commit it's marked to fixup or squash, and there will be no need to add a message body.
- Line breaks do not count towards the required minimum message length since version 0.9.0.
- Ticket and issue references using keywords like "Closes #123", do not count towards the required minimum message length since version 0.9.0.
- Co-authored-by lines, do not count towards the required minimum message length since version 0.9.0.

## MessageLineLength

<%= error_label %>
<%= version_label "0.1.0" %>

The commit's message body has one or more lines that are too long. The maximum line length in a message body is 72 characters. Split sentences and paragraph across multiples lines.

Lines that include URLs that start with `http://` or `https://` are excluded from this rule. Lines that are too long inside code blocks are also ignored, because it's not always possible to reformat code to fit on a 72 character line.

~~~md
# Good - max 72 characters per line
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,
sed diam voluptua.

# Good - the only too long line includes URL
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.
Source:
https://url-to-page-that-is-very-long.org/but-still-valid-for-this-rule.html

# Good - the only long line is in a code block
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.

```
Example code block with a very long line that will be considered valid!!!!
```

```md
Example code block with a very long line that will be considered valid!!!!
```

``` md
Example code block with a very long line that will be considered valid!!!!
```

- Valid indented fenced code block inside a list
```
Example code block with a very long line that will be considered valid!
```

# Good - the only long line is in a code block
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.

Example code block with a very long line that will consider valid!!!!

# Bad - lines are too long
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy aa
tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
~~~

### Notes about message line lengths

- Certain characters like emoji are counted as multiple characters in this rule. Read more about [Unicode support][unicode].

## MessageSkipBuildTag

<%= hint_label %>
<%= version_label "0.8.0" %>

Lintje detected only certain text files were changed. Usually the Continuous Integration build doesn't need to be run for these type of files changes, and running would be a waste of resources.

Add the `[skip ci]` build tag, or the tag applicable to your Continuous Integration system, to not run the tests or deploy for this commit. This saves on resources used, time that people are waiting for builds and money running those builds. Win-win-win.

- `README`
- `README.md`
- `LICENSE`
- `LICENSE.md`
- `CODE_OF_CONDUCT`
- `CODE_OF_CONDUCT.md`
- `docs/README.md`

Any other file extension than `md` will also be valid for this detection, like `markdown` and `txt`. Any of the above files in sub directories are also checked for.

## MessageTicketNumber

<%= hint_label %>
<%= version_label "0.7.0" %>

The commit subject and message do not contain a reference to a ticket number. Link back to the relevant ticket/issue using the Git repository's hosting service in the commit message body.

```
Closes #123
Closes org/repo#123
Closes https://hosting.com/org/repo/issues/123
Related !123
Part of #123
Part of issue #123
Part of project #123
Part of epic #123
```

### Notes about MessageTicketNumber

- The phrases "Part of" and "Related" were added in version 0.7.1.
- The phrases "Part of issue|project|epic|" were added in version 0.9.0.
- URL detection was added in version 0.9.0.

[unicode]: /docs/rules/#unicode
[NeedsRebase]: /docs/rules/commit-type/#needsrebase
