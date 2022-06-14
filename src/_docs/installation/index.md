---
title: "Installation"
description: "Install Lintje on your own system and make it part of your Continuous Integration workflow. Lint commits and branches."
---

To use Lintje, it first needs to be installed on the systems you want to validate your commits. This can be both your local setup and the Continuous Integration build for the project.

Lintje has a release per Operating System, make sure you Operating System of choice is supported: see the [list of installation targets](#supported-operating-systems).

After you've installed Lintje, make sure to add [Git hooks](/docs/git-hooks/) to your local project and/or add Lintje to the [Continuous Integration for your project](/docs/automated-review/).

<%= toc %>

## macOS

To install Lintje on macOS use the [Homebrew](https://brew.sh) tap.

```
brew tap tombruijn/lintje
brew install lintje
```

Whenever a new version comes out run the following:

```
brew update
brew upgrade lintje
```

## Linux

Please see the [Linux installation guide](/docs/installation/linux/) for more information about different Linux distributions.

## Microsoft Windows

There is no automated method of installing Lintje on Microsoft Windows at this time. Please see the [manual installation section](#manual-installation) for now.

## Cargo install

If [Rust](https://www.rust-lang.org) is installed on your system it's also an option to install the Lintje crate using the command below. It's not guaranteed to work on any system Rust runs on, but please [create an issue][issues] if you run into any problems.

```
cargo install lintje
```

## Manual installation

It is always possible to manually install Lintje. Do be aware that it will also need to be manually updated.

The latest, and older versions, of Lintje can be found on the [releases page][releases].

Once you've downloaded the archive for your Operating System, extract it to a directory in your `$PATH` so the `lintje` executable is available in any directory from the command line.

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
