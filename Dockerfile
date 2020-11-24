FROM bitnami/kubectl:latest

ENV HELM_VERSION=3.4.1
ENV RELEASE_ROOT="https://get.helm.sh"
ENV RELEASE_FILE="helm-v${HELM_VERSION}-linux-amd64.tar.gz"

LABEL maintainer="nicolas.morin@reacteev.com"

USER root

# Download helm
RUN curl -L ${RELEASE_ROOT}/${RELEASE_FILE} |tar xvz && \
    mv linux-amd64/helm /usr/bin/helm && \
    chmod +x /usr/bin/helm

# Add helm user
RUN useradd -ms /bin/bash helm
ENV HOME=/home/helm

USER helm
WORKDIR /home/helm

ENTRYPOINT [""]
