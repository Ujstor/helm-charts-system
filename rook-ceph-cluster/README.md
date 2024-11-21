# rook-ceph-cluster

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.15.5](https://img.shields.io/badge/AppVersion-1.15.5-informational?style=flat-square)

Rook Ceph Cluster Helm Chart

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.rook.io/release | rook-ceph-cluster | 1.15.5 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cephBlockPools[0].name | string | `"ceph-blockpool"` |  |
| cephBlockPools[0].storageClass.allowedTopologies[0].matchLabelExpressions[0].key | string | `"rook-ceph-role"` |  |
| cephBlockPools[0].storageClass.allowedTopologies[0].matchLabelExpressions[0].values[0] | string | `"storage-node"` |  |
| cephBlockPools[0].storageClass.enabled | bool | `true` |  |
| cephBlockPools[0].storageClass.name | string | `"ceph-block"` |  |
| cephClusterSpec.dashboard.enabled | bool | `true` |  |
| cephClusterSpec.dashboard.placement.all.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].key | string | `"role"` |  |
| cephClusterSpec.dashboard.placement.all.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].operator | string | `"In"` |  |
| cephClusterSpec.dashboard.placement.all.nodeAffinity.requiredDuringSchedulingIgnoredDuringExecution.nodeSelectorTerms[0].matchExpressions[0].values[0] | string | `"storage-node"` |  |
| cephClusterSpec.dashboard.ssl | bool | `true` |  |
| cephClusterSpec.mgr.allowMultiplePerNode | bool | `false` |  |
| cephClusterSpec.mgr.count | int | `2` |  |
| cephClusterSpec.mon.allowMultiplePerNode | bool | `false` |  |
| cephClusterSpec.mon.count | int | `3` |  |
| cephClusterSpec.resources.mgr.limits.memory | string | `"1Gi"` |  |
| cephClusterSpec.resources.mgr.requests.cpu | string | `"500m"` |  |
| cephClusterSpec.resources.mgr.requests.memory | string | `"512Mi"` |  |
| cephClusterSpec.resources.mon.limits.memory | string | `"2Gi"` |  |
| cephClusterSpec.resources.mon.requests.cpu | string | `"1000m"` |  |
| cephClusterSpec.resources.mon.requests.memory | string | `"1Gi"` |  |
| cephClusterSpec.resources.osd.limits.memory | string | `"4Gi"` |  |
| cephClusterSpec.resources.osd.requests.cpu | string | `"1000m"` |  |
| cephClusterSpec.resources.osd.requests.memory | string | `"4Gi"` |  |
| cephFileSystems[0].name | string | `"ceph-filesystem"` |  |
| cephFileSystems[0].spec.metadataServer.resources.limits.memory | string | `"4Gi"` |  |
| cephFileSystems[0].spec.metadataServer.resources.requests.cpu | string | `"1000m"` |  |
| cephFileSystems[0].spec.metadataServer.resources.requests.memory | string | `"4Gi"` |  |
| cephFileSystems[0].storageClass.enabled | bool | `true` |  |
| cephFileSystems[0].storageClass.isDefault | bool | `false` |  |
| cephFileSystems[0].storageClass.name | string | `"ceph-filesystem"` |  |
| cephObjectStores[0].ingress.enabled | bool | `false` |  |
| cephObjectStores[0].name | string | `"ceph-objectstore"` |  |
| cephObjectStores[0].spec.dataPool.erasureCoded.codingChunks | int | `1` |  |
| cephObjectStores[0].spec.dataPool.erasureCoded.dataChunks | int | `2` |  |
| cephObjectStores[0].spec.dataPool.failureDomain | string | `"host"` |  |
| cephObjectStores[0].spec.gateway.instances | int | `1` |  |
| cephObjectStores[0].spec.gateway.port | int | `80` |  |
| cephObjectStores[0].spec.gateway.priorityClassName | string | `"system-cluster-critical"` |  |
| cephObjectStores[0].spec.gateway.resources.limits.memory | string | `"2Gi"` |  |
| cephObjectStores[0].spec.gateway.resources.requests.cpu | string | `"1000m"` |  |
| cephObjectStores[0].spec.gateway.resources.requests.memory | string | `"1Gi"` |  |
| cephObjectStores[0].spec.metadataPool.failureDomain | string | `"host"` |  |
| cephObjectStores[0].spec.metadataPool.replicated.size | int | `3` |  |
| cephObjectStores[0].spec.preservePoolsOnDelete | bool | `true` |  |
| cephObjectStores[0].storageClass.annotations | object | `{}` |  |
| cephObjectStores[0].storageClass.enabled | bool | `true` |  |
| cephObjectStores[0].storageClass.labels | object | `{}` |  |
| cephObjectStores[0].storageClass.name | string | `"ceph-bucket"` |  |
| cephObjectStores[0].storageClass.parameters.region | string | `"us-east-1"` |  |
| cephObjectStores[0].storageClass.reclaimPolicy | string | `"Delete"` |  |
| cephObjectStores[0].storageClass.volumeBindingMode | string | `"Immediate"` |  |
| ingress.dashboard | object | `{}` |  |
| toolbox.enabled | bool | `true` |  |

