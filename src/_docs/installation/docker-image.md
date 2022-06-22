---
title: "Docker image"
---

<%= version_label "0.7.1" %>

Lintje also ships as a Docker image. This Docker image can be used in your build or as an easy way to try out Lintje without directly having to install or compile it.

The Lintje image is available for download on Docker Hub as the [tombruijn/lintje Docker image](https://hub.docker.com/r/tombruijn/lintje). It is available as a minimal Alpine Linux image for both x86 64-bit and ARM 64-bit platforms.

```sh
docker run --volume "$(pwd):/app" --workdir "/app" --rm tombruijn/lintje
```

It support all the [options and flags](/docs/usage/) that Lintje does normally on the command line.

```sh
docker run --volume "$(pwd):/app" --workdir "/app" --rm tombruijn/lintje HEAD~5...HEAD --color --no-hints
```

_The examples above show an example where the current directory is mounted on Linux/macOS and used a working directory. Then Lintje is run in that directory in the Docker container in which the Git history is validated. When the validation is done the container is stopped and removed._

[Back to installation section](/docs/installation/).
