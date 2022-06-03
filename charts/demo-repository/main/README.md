# hello-helm

[hello-helm](https://github.com/happycloudpak/helm-charts/tree/master/stable)
helm chart study를 위한 sample chart입니다.

## Introduction

웹페이지상에 'Hello, Happy Helm !'을 표시합니다.

## Prerequisites

- Kubernetes 1.8+

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ $ helm install <git repository>/hello-helm --name my-release

```

The command deploys hello-helm on the Kubernetes cluster in the default configuration. The [configuration](#configuration) section lists the parameters that can be configured during installation.

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```bash
$ helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Configuration

The following table lists the configurable parameters of the chart and their default values.

| Parameter                                     | Description                                                                                                                                         | Default                                                 |
|-----------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------|
| `image.registry`                              | Image registry                                                                                                                                | `docker.io`                                             |
| `image.repository`                            | Image name                                                                                                                                    | `ondalk8s/hello-helm`                                         |
| `image.tag`                                   | Image tag                                                                                                                                     | `{TAG_NAME}`                                            |
| `image.pullPolicy`                            | Image pull policy                                                                                                                                   | `Always`                                          |
| `image.pullSecrets`                           | Specify docker-registry secret names as an array                                                                                                    | `nil`                                                   |
| `nameOverride`                                | String to partially override hello-helm.fullname template with a string (will prepend the release name)                                                  | `nil`                                                   |
| `fullnameOverride`                            | String to fully override hello-helm.fullname template with a string                                                                                      | `nil`                                                   |

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`. For example,

```bash
$ helm install --name my-release \
  --set password=secretpassword \
    <repo>/hello-helm
```

The above command sets the hello-helm server password to `secretpassword`.

Alternatively, a YAML file that specifies the values for the parameters can be provided while installing the chart. For example,

```bash
$ helm install --name my-release -f values.yaml <repo>/hello-helm
```

```

> **Tip**: You can use the default [values.yaml](values.yaml)

