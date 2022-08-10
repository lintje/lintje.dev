---
name: SubjectBuildTag
type: error
---

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
