# gitlab-operator

![Version: 1.1.0](https://img.shields.io/badge/Version-1.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.9.1](https://img.shields.io/badge/AppVersion-1.9.1-informational?style=flat-square)

Gitlab Operator Helm chart configurated by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.gitlab.io | gitlab-operator | 1.9.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| gitlab-operator.resources.limits.cpu | string | `"500m"` |  |
| gitlab-operator.resources.limits.memory | string | `"512Mi"` |  |
| gitlab-operator.resources.requests.cpu | string | `"100m"` |  |
| gitlab-operator.resources.requests.memory | string | `"100Mi"` |  |
| gitlab-operator.watchCluster | bool | `true` |  |

