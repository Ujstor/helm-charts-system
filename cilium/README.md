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

