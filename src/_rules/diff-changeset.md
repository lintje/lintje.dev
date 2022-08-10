---
name: DiffChangeset
type: error
---

<%= version_label "0.9.0" %>

If a repository uses [changesets](https://github.com/changesets/changesets), it will give a hint to add a changeset file to the commit. If no changeset is needed for the commit, because it's not a user facing change (like an internal refactor with no API changes), add the `[skip changeset]` tag to skip this rule and any CI checks.

If a repository does not use changesets, this rule is ignored. Lintje will automatically detect if a repository uses changesets by checking the presence of a `.changeset` or `.changesets` directory in the repository.
