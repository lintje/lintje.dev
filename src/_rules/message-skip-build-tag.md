---
name: MessageSkipBuildTag
type: hint
---

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
