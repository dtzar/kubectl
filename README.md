# Kubernetes Client

[![](https://images.microbadger.com/badges/image/dtzar/kubectl.svg)](https://microbadger.com/images/dtzar/kubectl "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/dtzar/kubectl.svg)](https://microbadger.com/images/dtzar/kubectl "Get your own version badge on microbadger.com")

# Supported tags and respective `Dockerfile` links

* `1.5.1`    [(1.5.1/Dockerfile)](https://github.com/dtzar/kubectl/blob/1.5.1/Dockerfile) - kubectl v1.5.1, deis v2.9.1, helm v2.1.3

## Overview

This container provides kubectl, helm, and deis utilities for working with a Kubernetes cluster.  The primiary intention is use for personal administration by running bash as the initial command on default run as well as using the below example to map the host docker machine's home directory to the container's home directory for necessary access to .kube configuration files.

If you desire only kubectl installed and this as the entry command, I recommend checking out these images instead:
* [lachlanevenson/kubectl](https://hub.docker.com/r/lachlanevenson/k8s-kubectl/)
* [kodaii/kubectl](https://hub.docker.com/r/koudaiii/kubectl/)
* [wernight/kubectl](https://hub.docker.com/r/wernight/kubectl/)

## Build

`make docker_build`

## Run

`docker run -it -v ~/.kube:/config/.kube dtzar/kubectl`