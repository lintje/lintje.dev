---
title: "GitHub Action"
description: "Validate Git history using the Lintje GitHub Action. Add Lintje to your GitHub Action workflow to validate commits on every push."
---

<%= version_label "0.7.1" %>

Lintje is available as a GitHub Action which can be used in GitHub actions workflows to validate commits and branches on every push.

- [Lintje on the GitHub marketplace](https://github.com/marketplace/actions/lintje)

For more information on how to use the Lintje GitHub Action, please see the [Lintje GitHub Action README](https://github.com/lintje/action#readme).

[Back to installation section](/docs/installation/).

## Example GitHub workflow using Lintje

```yaml
name: "Your workflow name"
on: [push]

jobs:
  lintje: # Add a new job for Lintje
    name: "Lintje (Git linter)"
    runs-on: ubuntu-latest # Supported on ubuntu, macOS and Microsoft Windows
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0 # Fetch depth is required
      - uses: lintje/action@v<%= latest_minor_version %>
```
