# secret-store

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

A Helm chart for configuring External Secrets SecretStore

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| secretStore.annotations.description | string | `"Kubernetes secrets store"` |  |
| secretStore.clusterWide | bool | `true` |  |
| secretStore.labels.environment | string | `"prod"` |  |
| secretStore.provider.kubernetes.auth.serviceAccount.create | bool | `true` |  |
| secretStore.provider.kubernetes.auth.serviceAccount.name | string | `"todo-secret-store-sa"` |  |
| secretStore.provider.type | string | `"kubernetes"` |  |

