# minio-tenant

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v6.0.4](https://img.shields.io/badge/AppVersion-v6.0.4-informational?style=flat-square)

Minio Tenant Helm chart configurated by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://operator.min.io | minio-tenant(tenant) | 6.0.4 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| minio-tenant.ingress.api.annotations | object | `{}` |  |
| minio-tenant.ingress.api.enabled | bool | `false` |  |
| minio-tenant.ingress.api.host | string | `"minio.local"` |  |
| minio-tenant.ingress.api.ingressClassName | string | `""` |  |
| minio-tenant.ingress.api.labels | object | `{}` |  |
| minio-tenant.ingress.api.path | string | `"/"` |  |
| minio-tenant.ingress.api.pathType | string | `"Prefix"` |  |
| minio-tenant.ingress.api.tls | list | `[]` |  |
| minio-tenant.ingress.console.annotations | object | `{}` |  |
| minio-tenant.ingress.console.enabled | bool | `false` |  |
| minio-tenant.ingress.console.host | string | `"minio-console.local"` |  |
| minio-tenant.ingress.console.ingressClassName | string | `""` |  |
| minio-tenant.ingress.console.labels | object | `{}` |  |
| minio-tenant.ingress.console.path | string | `"/"` |  |
| minio-tenant.ingress.console.pathType | string | `"Prefix"` |  |
| minio-tenant.ingress.console.tls | list | `[]` |  |
| minio-tenant.tenant.configSecret.accessKey | string | `"minio"` |  |
| minio-tenant.tenant.configSecret.name | string | `"myminio-env-configuration"` |  |
| minio-tenant.tenant.configSecret.secretKey | string | `"minio123"` |  |
| minio-tenant.tenant.configuration.name | string | `"myminio-env-configuration"` |  |
| minio-tenant.tenant.name | string | `"myminio"` |  |
| minio-tenant.tenant.pools[0].name | string | `"pool-0"` |  |
| minio-tenant.tenant.pools[0].servers | int | `1` |  |
| minio-tenant.tenant.pools[0].size | string | `"10Gi"` |  |
| minio-tenant.tenant.pools[0].volumesPerServer | int | `2` |  |

