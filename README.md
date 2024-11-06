# K8s System related Helm Charts

Helm chart collection that simplifies Kubernetes configuration to be production-ready.


# cert-manager

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.16.1](https://img.shields.io/badge/AppVersion-1.16.1-informational?style=flat-square)

A Cert-Manager Helm chart config by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.jetstack.io | cert-manager(cert-manager) | 1.16.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cert-manager.crds.enabled | bool | `true` |  |
| clusterIssuer.email | string | `"mail@mail.com"` |  |
| clusterIssuer.enabled | bool | `false` |  |
| clusterIssuer.ingressClassName | string | `"nginx"` |  |
| clusterIssuer.metadata.name | string | `"letsencrypt"` |  |
| clusterIssuer.privateKeySecretRef.name | string | `"letsencrypt-prod"` |  |


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)


# cilium

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.16.3](https://img.shields.io/badge/AppVersion-1.16.3-informational?style=flat-square)

Cilium Helm chart configured by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://helm.cilium.io/ | cilium(cilium) | 1.16.3 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cilium.bpf.masquerade | bool | `true` |  |
| cilium.bpf.nativeRoutingCIDR | string | `"10.42.0.0/16"` |  |
| cilium.clusterwide.enabled | bool | `true` |  |
| cilium.dnsProxy.domain | string | `"cluster.local"` |  |
| cilium.dnsProxy.enabled | bool | `true` |  |
| cilium.etcd.enabled | bool | `false` |  |
| cilium.hostServices.enabled | bool | `true` |  |
| cilium.ipam.operator.clusterPoolIPv4PodCIDRList | string | `"10.42.0.0/16"` |  |
| cilium.ipam.operator.mode | string | `"kubernetes"` |  |
| cilium.ipv4.enabled | bool | `true` |  |
| cilium.ipv4NativeRoutingCIDR | string | `"10.42.0.0/16"` |  |
| cilium.k8sServiceHost | string | `nil` |  |
| cilium.k8sServicePort | int | `6443` |  |
| cilium.kubeProxyReplacement | bool | `true` |  |
| cilium.operator.replicas | int | `1` |  |
| cilium.security.enableEncryption | bool | `true` |  |
| cilium.security.enableHostFirewall | bool | `true` |  |


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)


# ingress-nginx

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.11.3](https://img.shields.io/badge/AppVersion-1.11.3-informational?style=flat-square)

Nginx Helm chart by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://kubernetes.github.io/ingress-nginx | nginx(ingress-nginx) | 4.11.3 |


