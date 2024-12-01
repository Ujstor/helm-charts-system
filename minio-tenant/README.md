# minio-tenant

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v6.0.4](https://img.shields.io/badge/AppVersion-v6.0.4-informational?style=flat-square)

Minio Tenant Helm chart configurated by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://operator.min.io | minio-tenant(tenant) | 6.0.4 |
| https://ujstor.github.io/helm-charts-system | secret-store | 1.0.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| minio-tenant.ingress.api.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt"` |  |
| minio-tenant.ingress.api.annotations."nginx.ingress.kubernetes.io/backend-protocol" | string | `"HTTPS"` |  |
| minio-tenant.ingress.api.annotations."nginx.ingress.kubernetes.io/force-ssl-redirect" | string | `"true"` |  |
| minio-tenant.ingress.api.enabled | bool | `false` |  |
| minio-tenant.ingress.api.host | string | `"minio.domain.com"` |  |
| minio-tenant.ingress.api.ingressClassName | string | `"nginx"` |  |
| minio-tenant.ingress.api.path | string | `"/"` |  |
| minio-tenant.ingress.api.pathType | string | `"Prefix"` |  |
| minio-tenant.ingress.api.tls[0].hosts[0] | string | `"minio.domain.com"` |  |
| minio-tenant.ingress.api.tls[0].secretName | string | `"minio-api-tls"` |  |
| minio-tenant.ingress.console.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt"` |  |
| minio-tenant.ingress.console.annotations."nginx.ingress.kubernetes.io/backend-protocol" | string | `"HTTPS"` |  |
| minio-tenant.ingress.console.annotations."nginx.ingress.kubernetes.io/force-ssl-redirect" | string | `"true"` |  |
| minio-tenant.ingress.console.enabled | bool | `false` |  |
| minio-tenant.ingress.console.host | string | `"minio-console.domain.com"` |  |
| minio-tenant.ingress.console.ingressClassName | string | `"nginx"` |  |
| minio-tenant.ingress.console.path | string | `"/"` |  |
| minio-tenant.ingress.console.pathType | string | `"Prefix"` |  |
| minio-tenant.ingress.console.tls[0].hosts[0] | string | `"minio-console.domain.com"` |  |
| minio-tenant.ingress.console.tls[0].secretName | string | `"minio-console-tls"` |  |
| minio-tenant.tenant.buckets | list | `[]` |  |
| minio-tenant.tenant.configuration.name | string | `"minio-admin-secret"` |  |
| minio-tenant.tenant.name | string | `"minio"` |  |
| minio-tenant.tenant.pools[0].name | string | `"pool-0"` |  |
| minio-tenant.tenant.pools[0].servers | int | `1` |  |
| minio-tenant.tenant.pools[0].size | string | `"10Gi"` |  |
| minio-tenant.tenant.pools[0].volumesPerServer | int | `1` |  |
| secret-store.secretStore.clusterWide | bool | `false` |  |
| secret-store.secretStore.provider.kubernetes.auth.serviceAccount.create | bool | `true` |  |
| secret-store.secretStore.provider.kubernetes.auth.serviceAccount.name | string | `"minio-secret-store-sa"` |  |
| secret-store.secretStore.provider.type | string | `"kubernetes"` |  |

