# postgres-cluster

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 5.6.0](https://img.shields.io/badge/AppVersion-5.6.0-informational?style=flat-square)

A PGO Cluster Helm chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| instanceCPU | string | `"1000m"` |  |
| instanceMemory | string | `"2Gi"` |  |
| monitoring | bool | `false` |  |
| port | int | `5432` |  |
| postgresVersion | int | `16` |  |

