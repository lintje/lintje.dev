---
title: "Commit message rules"
description: "Read about Lintje's rules for Git commit messages. Descriptive commit messages are important during reviews and whenever someone looks back and has found a commit to contain a relevant change."
---

The rules listed on this page are about the Git commit message. Descriptive commit messages are important during reviews and whenever someone looks back and has found a commit to contain a relevant change.

Good commit messages explain what the problem was that was solved, why the change was needed and what alternatives were considered. This information will give the reader the necessary context to leave a proper review or understand the constraints under which the commit was originally made.

<%= toc %>

## MessageEmptyFirstLine

<%= version_label "0.2.0" %>

The line in the commit message body after the subject is not empty. If the line after the subject is not empty, it is considered part of the subject.

This is the preferred format of a Git commit:

```md
Subject line

First message line below an empty line.
```

## MessagePresence

<%= version_label "0.1.0" %>

The commit's message body is empty or too short. Add a message body to the commit to elaborate on _why_ the change was necessary, what alternatives were considered and why this particular implementation was chosen as a solution.

### Notes about messages presence

- This rule is skipped if a [NeedsRebase] issue is found. To fix a NeedsRebase issue the commit needs to be rebased into the commit it's marked to fixup or squash, and there will be no need to add a message body.

## MessageLineLength

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

[unicode]: /docs/rules/#unicode
[NeedsRebase]: /docs/rules/commit-type/#needsrebase
