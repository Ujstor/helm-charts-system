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
| cilium.autoDirectNodeRoutes | bool | `false` |  |
| cilium.bandwidthManager.enabled | bool | `true` |  |
| cilium.bpf.masquerade | bool | `true` |  |
| cilium.enableIPMasqAgent | bool | `false` |  |
| cilium.enableIPv4Masquerade | bool | `true` |  |
| cilium.encryption.enabled | bool | `true` |  |
| cilium.encryption.type | string | `"ipsec"` |  |
| cilium.hostServices.enabled | bool | `true` |  |
| cilium.ipam.mode | string | `"cluster-pool"` |  |
| cilium.ipam.operator.clusterPoolIPv4PodCIDRList | string | `"10.250.0.0/16"` |  |
| cilium.ipv4.enabled | bool | `true` |  |
| cilium.ipv4NativeRoutingCIDR | string | `"10.250.0.0/16"` |  |
| cilium.ipv6.enabled | bool | `false` |  |
| cilium.k8sServiceHost | string | `nil` |  |
| cilium.k8sServicePort | int | `6443` |  |
| cilium.kubeProxyReplacement | bool | `true` |  |
| cilium.loadBalancer.acceleration | string | `"native"` |  |
| cilium.loadBalancer.algorithm | string | `"maglev"` |  |
| cilium.loadBalancer.mode | string | `"dsr"` |  |
| cilium.nodeinit.enabled | bool | `true` |  |
| cilium.nodeinit.reconfigureKubelet | bool | `true` |  |
| cilium.nodeinit.removeCbrBridge | bool | `true` |  |
| cilium.sessionAffinity | bool | `true` |  |

