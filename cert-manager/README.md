# cert-manager

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.16.1](https://img.shields.io/badge/AppVersion-1.16.1-informational?style=flat-square)

A Cert-Manager Helm chart config by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.jetstack.io | cert-manager(cert-manager) | 1.16.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cert-manager.crds.enabled | bool | `true` |  |
| clusterIssuer.clusterIssuer.metadata.name | string | `"letsencrypt"` |  |
| clusterIssuer.email | string | `nil` |  |
| clusterIssuer.enabled | bool | `true` |  |
| clusterIssuer.privateKeySecretRef.name | string | `"letsencrypt-prod"` |  |

