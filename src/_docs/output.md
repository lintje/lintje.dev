---
title: "Output format"
description: "Read how Lintje's output works and how you can find the source of the issue faster."
---

Whenever Lintje finds an issue it will print this to the terminal in human readable output.

This output is written in such a way to help you identify what issue was found, where it was found and how to solve it. This page will help clarify anything that's unclear in this output.

<%= toc %>

## Issue type and message

The example below is an error about the commit's subject ending with punctuation.

```
Error[SubjectPunctuation]: The subject ends with a punctuation character: `!`
  f9952f7:1:8: Fix bug!
    |
  1 | Fix bug!
    |        ^ Remove punctuation from the end of the subject
```

On the first line the rule name and its message are show.

- `SubjectPunctuation`: The rule name that the issue is about.
- `The subject ends with...`: The issue's message.

## Location

On the second line of of the printed output the location of source of the issue is printed.

```
f9952f7:1:8: Fix bug!
```

In the example above the location data is separated by colon (`:`) symbols. Each of these values mean the following:

- `f9952f7`: The commit SHA of the commit in which the issue was found.
    - For branch issues this value is instead shown as `Branch`.
- `1`: The line in the commit's message (including the subject line) on which the issue was found.
    - This value is not present for issues concerning branches.
    - This value is not present for issues concerning the commit contents.
- `8`: The column of the line on the issue was found.
    - This value is not present for issues concerning the commit contents.

## Errors

In the example below a commit's subject contains a ticket number. The issue output highlights the ticket number in the subject with the `^` symbols on the line below. The message behind those symbols suggests a course of action to the reader.

```
Error[SubjectTicketNumber]: The subject contains a ticket number
  b38a8e5:1:10: Fix bug. Closes #123
    |
  1 | Fix bug. Closes #123
    |          ^^^^^^^^^^^ Remove the ticket number from the subject
```

## Suggestions

<%= version_label "0.7.0" %>

For errors, Lintje may make a suggestion on how to resolve the issue. It will also print the new suggested location of the ticket number using the `-` symbol on the line below. In this example line `9` does not exist yet on the commit message body. Lintje is suggesting to add this line with the example content, moving the ticket number from the subject to the message body.

```
Error[SubjectTicketNumber]: The subject contains a ticket number
  b38a8e5:1:10: Fix bug. Closes #123
    |
  1 | Fix bug. Closes #123
    |          ^^^^^^^^^^^ Remove the ticket number from the subject
   ~~~
  9 | Closes #123
    | ----------- Move the ticket number to the message body
```

In the example above, line 1 and 9 may quite far apart, and there may be many lines of content between them which will cause a distraction. For this reason the content is hidden. This hidden content is indicated with the `~~~` symbols.

## Hints

<%= version_label "0.7.0" %>

Lintje can also print hints, messages to help you not forget certain useful message content. These hints do not need to be resolved for Lintje to pass. Hints can also be disabled with the [`--no-hints` flag](/docs/usage#hints).

```
Hint[MessageTicketNumber]: The message body does not contain a ticket or issue number
  b38a8e5:10:1: Fix bug
     |
   8 | The last line of the commit message body.
   9 |
  10 | Fixes #123
     | ---------- Consider adding a reference to a ticket or issue
```

Like with suggestions for errors, hints indicate the suggested changes with the `-` symbol.
