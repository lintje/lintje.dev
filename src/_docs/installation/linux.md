---
title: "Linux installation"
description: "Follow these installation instructions for your Linux distribution of choice to use Lintje in your projects. Packages and Homebrew for Linux are available."
---

<%= toc %>

[Back to installation section](/docs/installation/).

## Homebrew for Linux

To install Lintje on Linux use the [Homebrew](https://brew.sh) tap.

```
brew tap lintje/lintje
brew install lintje
```

Whenever a new version comes out run the following:

```
brew update
brew upgrade lintje
```

## Cloudsmith hosting

[![Hosted By: Cloudsmith](https://img.shields.io/badge/OSS%20hosting%20by-cloudsmith-blue?logo=cloudsmith&style=flat-square)][Cloudsmith]

View [Lintje packages on Cloudsmith](https://cloudsmith.io/~lintje/repos/lintje/).

Package repository hosting is graciously provided by [Cloudsmith][Cloudsmith].
Providing free repositories for Open Source projects. I chose Cloudsmith
because they have support for a lot of different formats, making it easier to
distribute Lintje in multiple packages.

## Debian

Cloudsmith provides a convenient installation script that will automatically
detect your distribution and version, and the Lintje package to install.

```sh
curl -1sLf "https://dl.cloudsmith.io/public/lintje/lintje/setup.deb.sh" | sudo -E bash
sudo apt-get install lintje
```

If you're like me and don't like to run remote installation scripts by piping
them directly into a privileged shell, run the separate commands below instead.

Make sure to update the distribution and version to one compatible with your
Operating System. This is mostly for future proofing as all distributions and
versions are served the same installation package. In the script below `ubuntu`
is selected as the distribution and `xenial` as the version. See the table
below for other options.

```sh
# Install packages needed to add the Lintje repository
sudo apt-get update
sudo apt-get install -y curl debian-keyring debian-archive-keyring apt-transport-https

# Add the Lintje key
curl -1sLf "https://dl.cloudsmith.io/public/lintje/lintje/gpg.578FFC9491B9D2DD.key" | sudo apt-key add -

# Add the Lintje apt repository as a source
sudo tee /etc/apt/sources.list.d/lintje.list <<EOF
# Provides the Lintje package
deb https://dl.cloudsmith.io/public/lintje/lintje/deb/ubuntu xenial main
deb-src https://dl.cloudsmith.io/public/lintje/lintje/deb/ubuntu xenial main
EOF

# Update the sources for apt after we added the new source
sudo apt-get update
# Install the Lintje package
sudo apt-get install -y lintje
```

### Debian Version table

| Release | Distribution | Version |
| --- | --- | --- |
| Ubuntu 21.04 | ubuntu | focal |
| Ubuntu 20.04 | ubuntu | focal |
| Ubuntu 18.04 | ubuntu | buster |
| Debian 13 Trixie | debian | trixie |
| Debian 12 Bookwork | debian | bookworm |
| Debian 11 Bullseye | debian | bullseye |
| Debian 10 Buster | debian | buster |

[Cloudsmith]: https://cloudsmith.com

