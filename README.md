# Helm3 Docker Image

This docker image comes with Helm3 and kubectl installed. You can specify the desired version of Helm by setting the `HELM_VERSION` var. It defaults to `3.6.3`
[Helm push plugin](https://github.com/chartmuseum/helm-push/) is also included.

## Basic Usage Instructions

### Execute Helm3 command

```bash
docker run --rm -it reacteev/helm3 helm version

```

### Execute kubectl command

```bash
docker run --rm -it reacteev/helm3 kubectl version

```
