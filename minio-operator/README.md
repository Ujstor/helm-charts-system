# minio-operator

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v6.0.4](https://img.shields.io/badge/AppVersion-v6.0.4-informational?style=flat-square)

Minio Operator Helm chart configurated by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://operator.min.io | operator | 6.0.4 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| minio-operator.operator.replicaCount | int | `1` |  |
| minio-operator.resources.requests.cpu | string | `"200m"` |  |
| minio-operator.resources.requests.ephemeral-storage | string | `"500Mi"` |  |
| minio-operator.resources.requests.memory | string | `"256Mi"` |  |

