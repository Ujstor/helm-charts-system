# cluster-issuer

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

A Cert-Manager ClusterIssuer Helm chart config by Ujstor

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| clusterIssuer.email | string | `nil` |  |
| clusterIssuer.enabled | bool | `true` |  |
| clusterIssuer.ingressClassName | string | `"nginx"` |  |
| clusterIssuer.metadata.name | string | `"letsencrypt"` |  |
| clusterIssuer.privateKeySecretRef.name | string | `"letsencrypt-prod"` |  |
| clusterIssuer.server | string | `"https://acme-v02.api.letsencrypt.org/directory"` |  |

