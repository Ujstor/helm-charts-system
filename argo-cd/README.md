# argo-cd

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.13.0](https://img.shields.io/badge/AppVersion-v2.13.0-informational?style=flat-square)

Argo Helm chart configured by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://argoproj.github.io/argo-helm | argo(argo-cd) | 7.7.3 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| argo.global.domain | string | `nil` |  |
| argo.server.ingress.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt"` |  |
| argo.server.ingress.annotations."nginx.ingress.kubernetes.io/backend-protocol" | string | `"HTTPS"` |  |
| argo.server.ingress.annotations."nginx.ingress.kubernetes.io/force-ssl-redirect" | string | `"true"` |  |
| argo.server.ingress.enabled | bool | `true` |  |
| argo.server.ingress.ingressClassName | string | `"nginx"` |  |
| argo.server.ingress.tls | bool | `true` |  |

