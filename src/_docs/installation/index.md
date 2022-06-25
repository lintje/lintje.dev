---
title: "Installation"
description: "Install Lintje on your own system and make it part of your Continuous Integration workflow. Lint commits and branches."
---

To use Lintje, it first needs to be installed on the systems you want to validate your commits. This can be both your local setup and the Continuous Integration build for the project.

Lintje has a release per Operating System, make sure you Operating System of choice is supported: see the [list of installation targets](#supported-operating-systems).

After you've installed Lintje, make sure to add [Git hooks](/docs/git-hooks/) to your local project and/or add Lintje to the [Continuous Integration for your project](/docs/automated-review/).

## Table of Contents

- Recommended installation methods
  - [Linux Homebrew and packages](/docs/installation/linux/)
  - [macOS Homebrew](/docs/installation/macos/)
  - [GitHub Action](/docs/installation/github-action/)
  - [Docker image](/docs/installation/docker-image/)
  - [Rust Cargo install](/docs/installation/rust-cargo-install/)
- [Manual installation](#manual-installation)
- [Microsoft Windows](#microsoft-windows)
- [Supported Operating Systems](#supported-operating-systems)

## Manual installation

It is always possible to manually install Lintje. Do be aware that it will also need to be manually updated.

The latest, and older versions, of Lintje can be found on the [releases page][releases].

Once you've downloaded the archive for your Operating System, extract it to a directory in your `$PATH` so the `lintje` executable is available in any directory from the command line.

## Microsoft Windows

There is no automated method of installing Lintje on Microsoft Windows at this time. Please see the [manual installation section](#manual-installation) for now.

## Supported Operating Systems

- Apple macOS:
    - x86 64-bit (`x86_64-apple-darwin`)
    - ARM 64-bit (`aarch64-apple-darwin`) (Apple Silicon)
- Linux GNU (most distributions like Ubuntu, Debian, etc.):
    - x86 64-bit (`x86_64-unknown-linux-gnu`)
    - ARM 64-bit (`aarch64-unknown-linux-gnu`)
- Alpine Linux musl:
    - x86 64-bit (`x86_64-unknown-linux-musl`)
    - ARM 64-bit (`aarch64-unknown-linux-musl`)
- Microsoft Windows:
    - x86 64-bit (`x86_64-pc-windows-gnu`)

Is your favorite Operating System not in this list? Please [create an issue][issues] with what Operating System you want to use Lintje on.

[issues]: <%= site.metadata.issue_tracker %>
[releases]: <%= site.metadata.releases %>

{: href="/docs/installation/macos/"}
