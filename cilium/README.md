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
| cilium.encryption.enabled | bool | `true` |  |
| cilium.encryption.type | string | `"wireguard"` |  |
| cilium.envoy.enabled | bool | `false` |  |
| cilium.ipam.mode | string | `"cluster-pool"` |  |
| cilium.ipam.operator.clusterPoolIPv4PodCIDRList[0] | string | `"10.255.0.0/16"` |  |
| cilium.ipv4NativeRoutingCIDR | string | `"10.255.0.0/16"` |  |
| cilium.k8sServiceHost | string | `nil` |  |
| cilium.k8sServicePort | int | `6443` |  |
| cilium.kubeProxyReplacement | bool | `true` |  |
| cilium.sessionAffinity | bool | `true` |  |

