---
layout: docs
title: "Commit subject rules"
---

The rules listed on this page are about the Git commit subject. This is the first thing other people see when they look at an individual commit or a history of a branch or Pull Request. That commit subjects are clear and to the point is important.

<%= toc %>

## SubjectLength

<%= version_label "0.1.0" %>

The commit's subject is considered too short or too long.

Short commit subjects like "WIP" and "Fix" don't explain the change well enough. Don't be afraid to dive into a little bit more detail to explain the change.

The commit's subject should be a maximum of 50 characters long. If the subject is longer than 50 characters, reword the subject to fit in the maximum subject length. Use the commit's message body to explain the change in greater detail.

```md
# Good
Fix incorrect email validation

# Bad - too short
WIP
wip
Fix

# Bad - too long
One day I woke up and found the solution to this year old bug, the solution...
```

### Notes about subject length

- This rule is skipped if a [SubjectCliche](#subjectcliche) issue is found.
- Certain characters like emoji are counted as multiple characters in this rule. Read more about [Unicode support][unicode].

## SubjectMood

<%= version_label "0.1.0" %>

Write commit subjects in the [imperative mood]. The commit is not actively "fixing" an issue, but it is a "fix" for an issue or it does "add" a feature.

Start the subject with something like "Fix ...", but not "Fixes ...", "Fixed ..." or "Fixing ...".

```md
# Good
Fix ...
Test ...
Add ...
Change ...
Update ...
Remove ...

# Bad
Fixes ...
Fixed ...
Fixing ...
Tests ...
Tested ...
Testing ...
Adds ...
Added ...
Adding ...
Changes ...
Changed ...
Changing ...
Updates ...
Updated ...
Updating ...
Removes ...
Removed ...
Removing ...
```

(_Where `...` would describe the change in more detail._)

You are of course free to start the subject with any other words than are listed under the "Good" examples, as long as the subject uses the imperative grammatical mood.

## SubjectWhitespace

<%= version_label "0.1.0" %>

The commit's subject starts with a whitespace (space, tab, etc). Remove this leading whitespace from the subject.

```md
# Good
Fix incorrect email validation

# Bad
 Fix incorrect email validation
  Fix incorrect email validation
<TAB>Fix incorrect email validation
```

## SubjectCapitalization

<%= version_label "0.1.0" %>

The commit's subject doesn't start with a capital letter. Use a capital letter to start the subject.

```md
# Good
Fix incorrect email validation

# Bad
fix incorrect email validation
```

### Notes about capitalization

- This rule is skipped if a [NeedsRebase] issue is found. To fix a NeedsRebase issue the commit needs to be rebased into the commit it's marked to fixup or squash, and there will be no need to fix the capitalization.*

## SubjectPunctuation

<%= version_label "0.1.0" %>

The commit's subject starts or ends with punctuation. Subjects don't need to end with punctuation.

It may also be that a subject starts with an emoji, subjects also don't need to start with an emoji as a prefix of some kind.

```md
# Good
Fix incorrect email validation

# Bad
Fix incorrect email validation.
Fix incorrect email validation!
Fix incorrect email validation?
.Fix incorrect email validation
!Fix incorrect email validation
?Fix incorrect email validation
📺 Fix my television
👍 All good
🐞 Fix bug in email validation
```

Sometimes commits contain some tag for some machine to parse, like `[ci skip]` or `[skip ci]` to avoid building the commit on the Continuous Integration, and save some resources. This rule will trigger if this tag is part of the commit's subject. Instead move the tag to the body of the commit message. It's not relevant for the subject, and the space can instead be used for describe the change in more detail.

## SubjectTicketNumber

<%= version_label "0.1.0" %>

The commit's subject includes a reference to a ticket or issue. Move this to the message body.

Invalid subject examples:

```md
# Bad
Fix #123
I have fixed #123
I have fixed org/repo#123
I have fixed https://github.com/org/repo#123
JIRA-123
Fix JIRA-123 for good
```

## SubjectPrefix

<%= version_label "0.3.0" %>

The commit's subject contains a prefix of some kind. Remove prefixes from the commit subject and reword the subject to explain the change in more detail.

```md
# Good
Fix bad validation for user email validation
Refactor the user email validation
Add email validation to user sign up
Add documentation for the user email validation

# Bad
fix: ...
chore: ...
feat: ...
feature: ...
docs: ...
refactor: ...
FIX: ...
fix!: bug...
fix(scope): ...
fix(scope)!: ...
```

## SubjectBuildTag

<%= version_label "0.3.0" %>

The commit's subject contains a "skip ci" build tag. This should be moved to the message body. The skip Continuous Integration tag doesn't tell anything about what kind of change was made. It's metadata only for the Continuous Integration system.

```md
# Bad
// General
Update README [ci skip]
Update README [skip ci]
Update README [no ci]
// AppVeyor
Update README [skip appveyor]
// Azure
Update README [azurepipelines skip]
Update README [skip azurepipelines]
Update README [azpipelines skip]
Update README [skip azpipelines]
Update README [azp skip]
Update README [skip azp]
Update README ***NO_CI***",
// GitHub Actions
Update README [actions skip]
Update README [skip actions]
// Travis
Update README [travis skip]
Update README [skip travis]
Update README [travis ci skip]
Update README [skip travis ci]
Update README [travis-ci skip]
Update README [skip travis-ci]
Update README [travisci skip]
Update README [skip travisci]
// Other custom tags that match the format
[skip me]
[something skip]
[skip changeset]
[changeset skip]
[skip review]
[review skip]
```

## SubjectCliche

<%= version_label "0.1.0" %>

The commit's subject is considered to be a cliché, it's overused and adds little meaning. This rule scans for subjects that only use two words to describe a change, usually "fix bug" and "update code" types of subjects. The words in the example below are the words it scans for.

To resolve this issue, expand the subject to explain the change in more detail. Describe what type of bug was fixed and what type of change was made.

```md
# Bad
WIP
Fix
Fix bug
Fixes test
Fixed issue
Fixing build
Add
Add file
Adds files
Added tests
Adding stuff
Update
Update README
Updates files
Updated tests
Updating stuff
Change
Change README
Changes files
Changed tests
Changing stuff
Remove
Remove file
Removes files
Removed tests
Removing stuff
Delete
Delete file
Deletes files
Deleted tests
Deleting stuff
...
```

[unicode]: /docs/rules/#unicode
[NeedsRebase]: /docs/rules/commit-type.html#needsrebase
