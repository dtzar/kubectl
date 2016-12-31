# Kubernetes Client

[![](https://images.microbadger.com/badges/image/dtzar/kubectl.svg)](https://microbadger.com/images/dtzar/kubectl "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/dtzar/kubectl.svg)](https://microbadger.com/images/dtzar/kubectl "Get your own version badge on microbadger.com")

# Supported tags and respective `Dockerfile` links
* `1.5.1`, `latest`    [(1.5.1/Dockerfile)](https://github.com/dtzar/kubectl/blob/dev/Dockerfile)

## Overview
This container provides the Kubernetes client kubectl which can be used to interact with a Kubernetes cluster

## Build
`make docker_build`

## Run
`docker run -it -v ~/.kube/config:/root/.kube/config dtzar/kubectl`