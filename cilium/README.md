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
| cilium.ipam.operator.clusterPoolIPv4PodCIDR | string | `"10.42.0.0./16"` |  |
| cilium.ipv4.enabled | bool | `true` |  |
| cilium.ipv4NativeRoutingCIDR | string | `"10.42.0.0/16"` |  |
| cilium.kubeProxyReplacement | bool | `true` |  |
| cilium.loadBalancer.mode | string | `"dsr"` |  |

