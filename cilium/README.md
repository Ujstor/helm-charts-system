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
| cilium.autoDirectNodeRoutes | bool | `true` |  |
| cilium.bandwidthManager.enabled | bool | `true` |  |
| cilium.bpf.masquerade | bool | `true` |  |
| cilium.enableIPMasqAgent | bool | `false` |  |
| cilium.enableIPv4Masquerade | bool | `true` |  |
| cilium.hostServices.enabled | bool | `true` |  |
| cilium.ipam.mode | string | `"kubernetes"` |  |
| cilium.ipam.operator.clusterPoolIPv4PodCIDRList | string | `"10.42.0.0/16"` |  |
| cilium.ipv4.enabled | bool | `true` |  |
| cilium.ipv4NativeRoutingCIDR | string | `"10.42.0.0/16"` |  |
| cilium.ipv6.enabled | bool | `false` |  |
| cilium.k8sServiceHost | string | `"127.0.0.1"` |  |
| cilium.k8sServicePort | int | `6443` |  |
| cilium.kubeProxyReplacement | bool | `true` |  |
| cilium.loadBalancer.algorithm | string | `"maglev"` |  |
| cilium.loadBalancer.mode | string | `"snat"` |  |
| cilium.nodeinit.enabled | bool | `true` |  |
| cilium.operator.replicas | int | `1` |  |
| cilium.routingMode | string | `"native"` |  |
| cilium.sessionAffinity | bool | `true` |  |

