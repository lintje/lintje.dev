---
layout: docs
title: "Automated review"
---

This page contains examples of how to use Lintje in different scenarios and setups like Continuous Integration systems.

## Continuous integration

### Semaphore

[Semaphore](https://semaphoreci.com/) has an environment variables that contains the range of commits that were pushed for a given workflow. This tests all the commits that are included in a Pull Request or Git push on a branch.

Add the following command to your build as a separate job.

```
$ lintje $SEMAPHORE_GIT_COMMIT_RANGE
```

This command with the `$SEMAPHORE_GIT_COMMIT_RANGE` variable wil resolve to a commit range like this:

```
$ lintje 5c84719708b9b649b9ef3b56af214f38cee6acde...92d87d5c0dd2dbb7a68ecb27df43d1b164fd3e30
```

Read more about [$SEMAPHORE_GIT_COMMIT_RANGE](https://docs.semaphoreci.com/ci-cd-environment/environment-variables/#semaphore_git_commit_range) in the Semaphore docs.

### Semaphore helper script

Use the following script, in a location like `script/lint_git`, in your project to download, install Lintje and cache for future builds. Change the version number in the `LINTJE_VERSION` variable to update Lintje to a newer version.

```sh
#!/bin/bash
# script/lint_git

set -eu

LINTJE_VERSION="<%= site.metadata.latest_version %>"

mkdir -p $HOME/bin
cache_key=v1-lintje-$LINTJE_VERSION
cache restore $cache_key

# File exists and is executable
if [ -x "$HOME/bin/lintje" ]; then
  echo "Restored Lintje $LINTJE_VERSION from cache"
else
  echo "Downloading Lintje $LINTJE_VERSION"
  curl -L \
    https://github.com/tombruijn/lintje/releases/download/v$LINTJE_VERSION/x86_64-unknown-linux-gnu.tar.gz | \
    tar -xz --directory $HOME/bin
  cache store $cache_key $HOME/bin/lintje
fi

$HOME/bin/lintje $SEMAPHORE_GIT_COMMIT_RANGE
```
