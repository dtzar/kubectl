FROM alpine

MAINTAINER David Tesar

ARG VCS_REF
ARG BUILD_DATE

# Metadata
LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/dtzar/kubectl" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile="/Dockerfile"

# Note: Latest version may be found on:
# https://aur.archlinux.org/packages/kubectl-bin/
ENV KUBE_LATEST_VERSION="v1.5.1"

RUN apk add --update ca-certificates \
    && apk add --update -t deps curl \
    && apk add bash \
    && curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_LATEST_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && curl -L https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get -o | bash \
    && curl -sSL http://deis.io/deis-cli/install-v2.sh | bash \
    && mv $PWD/deis /usr/local/bin/deis \
    # Cleanup uncessary files
    && apk del --purge deps \
    && rm /var/cache/apk/*

WORKDIR /config

CMD bash