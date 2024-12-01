# hashicorp-vault

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.18.1](https://img.shields.io/badge/AppVersion-1.18.1-informational?style=flat-square)

Vault Helm chart configured by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://helm.releases.hashicorp.com | vault | 0.29.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| vault.server.dataStorage.size | string | `"2Gi"` |  |
| vault.server.ingress.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt"` |  |
| vault.server.ingress.annotations."nginx.ingress.kubernetes.io/backend-protocol" | string | `"HTTP"` |  |
| vault.server.ingress.annotations."nginx.ingress.kubernetes.io/force-ssl-redirect" | string | `"true"` |  |
| vault.server.ingress.enabled | bool | `false` |  |
| vault.server.ingress.hosts[0].host | string | `"vault.domain.com"` |  |
| vault.server.ingress.hosts[0].paths[0] | string | `"/"` |  |
| vault.server.ingress.ingressClassName | string | `"nginx"` |  |
| vault.server.ingress.tls[0].hosts[0] | string | `"vault.domain.com"` |  |
| vault.server.ingress.tls[0].secretName | string | `"vault-tls"` |  |
| vault.ui.enabled | bool | `true` |  |

