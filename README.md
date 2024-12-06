# K8s System related Helm Charts

Helm chart collection that simplifies Kubernetes configuration to be production-ready.

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
| argo.global.domain | string | `"argocd.domain.com"` |  |
| argo.server.ingress.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt"` |  |
| argo.server.ingress.annotations."nginx.ingress.kubernetes.io/backend-protocol" | string | `"HTTPS"` |  |
| argo.server.ingress.annotations."nginx.ingress.kubernetes.io/force-ssl-redirect" | string | `"true"` |  |
| argo.server.ingress.enabled | bool | `false` |  |
| argo.server.ingress.extraTls[0].hosts[0] | string | `"argocd.domain.com"` |  |
| argo.server.ingress.extraTls[0].secretName | string | `"argocd-ingress-tls"` |  |
| argo.server.ingress.ingressClassName | string | `"nginx"` |  |


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)

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
| cilium.encryption.enabled | bool | `true` |  |
| cilium.encryption.type | string | `"wireguard"` |  |
| cilium.envoy.enabled | bool | `false` |  |
| cilium.ipam.mode | string | `"cluster-pool"` |  |
| cilium.ipam.operator.clusterPoolIPv4PodCIDRList | string | `"10.255.0.0/16"` |  |
| cilium.ipv4NativeRoutingCIDR | string | `"10.255.0.0/16"` |  |
| cilium.k8sServiceHost | string | `nil` |  |
| cilium.k8sServicePort | int | `6443` |  |
| cilium.kubeProxyReplacement | bool | `true` |  |
| cilium.sessionAffinity | bool | `true` |  |


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)

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


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)

# postgres-cluster

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 5.6.0](https://img.shields.io/badge/AppVersion-5.6.0-informational?style=flat-square)

A PGO Cluster Helm chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| instanceCPU | string | `"1000m"` |  |
| instanceMemory | string | `"2Gi"` |  |
| monitoring | bool | `false` |  |
| port | int | `5432` |  |
| postgresVersion | int | `16` |  |


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)

# postgres-operator

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 5.7.0](https://img.shields.io/badge/AppVersion-5.7.0-informational?style=flat-square)

Installer for PGO, the open source Postgres Operator from Crunchy Data

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| controllerImages.cluster | string | `"registry.developers.crunchydata.com/crunchydata/postgres-operator:ubi8-5.7.0-0"` |  |
| debug | bool | `true` |  |
| imagePullSecretNames | list | `[]` |  |
| pgoControllerLeaseName | string | `"cpk-leader-election-lease"` |  |
| relatedImages."postgres_15_gis_3.3".image | string | `"registry.developers.crunchydata.com/crunchydata/crunchy-postgres-gis:ubi8-15.8-3.3-2"` |  |
| relatedImages."postgres_16_gis_3.3".image | string | `"registry.developers.crunchydata.com/crunchydata/crunchy-postgres-gis:ubi8-16.4-3.3-2"` |  |
| relatedImages."postgres_16_gis_3.4".image | string | `"registry.developers.crunchydata.com/crunchydata/crunchy-postgres-gis:ubi8-16.4-3.4-2"` |  |
| relatedImages."postgres_17_gis_3.4".image | string | `"registry.developers.crunchydata.com/crunchydata/crunchy-postgres-gis:ubi8-17.0-3.4-0"` |  |
| relatedImages.pgadmin.image | string | `"registry.developers.crunchydata.com/crunchydata/crunchy-pgadmin4:ubi8-4.30-31"` |  |
| relatedImages.pgbackrest.image | string | `"registry.developers.crunchydata.com/crunchydata/crunchy-pgbackrest:ubi8-2.53.1-0"` |  |
| relatedImages.pgbouncer.image | string | `"registry.developers.crunchydata.com/crunchydata/crunchy-pgbouncer:ubi8-1.23-0"` |  |
| relatedImages.pgexporter.image | string | `"registry.developers.crunchydata.com/crunchydata/crunchy-postgres-exporter:ubi8-0.15.0-12"` |  |
| relatedImages.pgupgrade.image | string | `"registry.developers.crunchydata.com/crunchydata/crunchy-upgrade:ubi8-5.7.0-0"` |  |
| relatedImages.postgres_15.image | string | `"registry.developers.crunchydata.com/crunchydata/crunchy-postgres:ubi8-15.8-2"` |  |
| relatedImages.postgres_16.image | string | `"registry.developers.crunchydata.com/crunchydata/crunchy-postgres:ubi8-16.4-2"` |  |
| relatedImages.postgres_17.image | string | `"registry.developers.crunchydata.com/crunchydata/crunchy-postgres:ubi8-17.0-0"` |  |
| relatedImages.standalone_pgadmin.image | string | `"registry.developers.crunchydata.com/crunchydata/crunchy-pgadmin4:ubi8-8.12-0"` |  |
| replicas | int | `1` |  |
| resources.controller | object | `{}` |  |
| singleNamespace | bool | `false` |  |


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)

# external-secrets

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.10.5](https://img.shields.io/badge/AppVersion-v0.10.5-informational?style=flat-square)

External-Secrets Helm chart configured by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.external-secrets.io | external-secrets | 0.10.5 |


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)

# gitlab-operator

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.7.1](https://img.shields.io/badge/AppVersion-1.7.1-informational?style=flat-square)

Gitlab Operator Helm chart configurated by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.gitlab.io | gitlab-operator | 1.7.1 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| gitlab-operator.resources.limits.cpu | string | `"500m"` |  |
| gitlab-operator.resources.limits.memory | string | `"512Mi"` |  |
| gitlab-operator.resources.requests.cpu | string | `"100m"` |  |
| gitlab-operator.resources.requests.memory | string | `"100Mi"` |  |
| gitlab-operator.watchCluster | bool | `true` |  |


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)

# ingress-nginx

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.11.3](https://img.shields.io/badge/AppVersion-1.11.3-informational?style=flat-square)

Nginx Helm chart

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://kubernetes.github.io/ingress-nginx | nginx(ingress-nginx) | 4.11.3 |


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)

# minio-operator

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v6.0.4](https://img.shields.io/badge/AppVersion-v6.0.4-informational?style=flat-square)

Minio Operator Helm chart configurated by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://operator.min.io | minio-operator(operator) | 6.0.4 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| minio-operator.operator.replicaCount | int | `1` |  |
| minio-operator.resources.requests.cpu | string | `"200m"` |  |
| minio-operator.resources.requests.ephemeral-storage | string | `"500Mi"` |  |
| minio-operator.resources.requests.memory | string | `"256Mi"` |  |


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)

# minio-tenant

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v6.0.4](https://img.shields.io/badge/AppVersion-v6.0.4-informational?style=flat-square)

Minio Tenant Helm chart configurated by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://operator.min.io | minio-tenant(tenant) | 6.0.4 |
| https://ujstor.github.io/helm-charts-system | secret-store | 1.0.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| minio-tenant.ingress.api.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt"` |  |
| minio-tenant.ingress.api.annotations."nginx.ingress.kubernetes.io/backend-protocol" | string | `"HTTPS"` |  |
| minio-tenant.ingress.api.annotations."nginx.ingress.kubernetes.io/force-ssl-redirect" | string | `"true"` |  |
| minio-tenant.ingress.api.enabled | bool | `false` |  |
| minio-tenant.ingress.api.host | string | `"minio.domain.com"` |  |
| minio-tenant.ingress.api.ingressClassName | string | `"nginx"` |  |
| minio-tenant.ingress.api.path | string | `"/"` |  |
| minio-tenant.ingress.api.pathType | string | `"Prefix"` |  |
| minio-tenant.ingress.api.tls[0].hosts[0] | string | `"minio.domain.com"` |  |
| minio-tenant.ingress.api.tls[0].secretName | string | `"minio-api-tls"` |  |
| minio-tenant.ingress.console.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt"` |  |
| minio-tenant.ingress.console.annotations."nginx.ingress.kubernetes.io/backend-protocol" | string | `"HTTPS"` |  |
| minio-tenant.ingress.console.annotations."nginx.ingress.kubernetes.io/force-ssl-redirect" | string | `"true"` |  |
| minio-tenant.ingress.console.enabled | bool | `false` |  |
| minio-tenant.ingress.console.host | string | `"minio-console.domain.com"` |  |
| minio-tenant.ingress.console.ingressClassName | string | `"nginx"` |  |
| minio-tenant.ingress.console.path | string | `"/"` |  |
| minio-tenant.ingress.console.pathType | string | `"Prefix"` |  |
| minio-tenant.ingress.console.tls[0].hosts[0] | string | `"minio-console.domain.com"` |  |
| minio-tenant.ingress.console.tls[0].secretName | string | `"minio-console-tls"` |  |
| minio-tenant.tenant.buckets | list | `[]` |  |
| minio-tenant.tenant.configuration.name | string | `"minio-admin-secret"` |  |
| minio-tenant.tenant.name | string | `"minio"` |  |
| minio-tenant.tenant.pools[0].name | string | `"pool-0"` |  |
| minio-tenant.tenant.pools[0].servers | int | `1` |  |
| minio-tenant.tenant.pools[0].size | string | `"10Gi"` |  |
| minio-tenant.tenant.pools[0].volumesPerServer | int | `1` |  |
| secret-store.secretStore.clusterWide | bool | `false` |  |
| secret-store.secretStore.provider.kubernetes.auth.serviceAccount.create | bool | `true` |  |
| secret-store.secretStore.provider.kubernetes.auth.serviceAccount.name | string | `"minio-secret-store-sa"` |  |
| secret-store.secretStore.provider.type | string | `"kubernetes"` |  |


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)

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
| ingress.dashboard | object | `{}` |  |
| toolbox.enabled | bool | `true` |  |


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)

# rook-ceph-operator

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.15.5](https://img.shields.io/badge/AppVersion-1.15.5-informational?style=flat-square)

Rook Ceph Operator Helm Chart

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.rook.io/release | rook-ceph | 1.15.5 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| csi.csiCephFSPluginResource | string | `"- name : csi-cephfsplugin\n  resource:\n    requests:\n      memory: 512Mi\n      cpu: 250m\n    limits:\n      memory: 1Gi\n"` |  |
| csi.csiCephFSProvisionerResource | string | `"- name : csi-cephfsplugin\n  resource:\n    requests:\n      memory: 512Mi\n      cpu: 250m\n    limits:\n      memory: 1Gi\n"` |  |
| csi.csiNFSPluginResource | string | `"- name : csi-nfsplugin\n  resource:\n    requests:\n      memory: 512Mi\n      cpu: 250m\n    limits:\n      memory: 1Gi\n"` |  |
| csi.csiNFSProvisionerResource | string | `"- name : csi-nfsplugin\n  resource:\n    requests:\n      memory: 512Mi\n      cpu: 250m\n    limits:\n      memory: 1Gi\n- name : csi-attacher\n  resource:\n    requests:\n      memory: 512Mi\n      cpu: 250m\n    limits:\n      memory: 1Gi\n"` |  |
| csi.csiRBDPluginResource | string | `"- name : csi-rbdplugin\n  resource:\n    requests:\n      memory: 512Mi\n      cpu: 250m\n    limits:\n      memory: 1Gi\n"` |  |
| csi.csiRBDProvisionerResource | string | `"- name : csi-rbdplugin\n  resource:\n    requests:\n      memory: 512Mi\n    limits:\n      memory: 1Gi\n- name : csi-omap-generator\n  resource:\n    requests:\n      memory: 512Mi\n      cpu: 250m\n    limits:\n      memory: 1Gi\n"` |  |
| resources.limits.memory | string | `"512Mi"` |  |
| resources.requests.cpu | string | `"200m"` |  |
| resources.requests.memory | string | `"128Mi"` |  |


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)

# secret-store

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

A Helm chart for configuring External Secrets SecretStore


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)

# hashicorp-vault

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.18.1](https://img.shields.io/badge/AppVersion-1.18.1-informational?style=flat-square)

Vault Helm chart configured by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://helm.releases.hashicorp.com | vault | 0.29.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| vault.server.dataStorage.size | string | `"2Gi"` |  |
| vault.server.ingress.annotations."cert-manager.io/cluster-issuer" | string | `"letsencrypt"` |  |
| vault.server.ingress.annotations."nginx.ingress.kubernetes.io/backend-protocol" | string | `"HTTP"` |  |
| vault.server.ingress.annotations."nginx.ingress.kubernetes.io/force-ssl-redirect" | string | `"true"` |  |
| vault.server.ingress.enabled | bool | `false` |  |
| vault.server.ingress.hosts[0].host | string | `"vault.domain.com"` |  |
| vault.server.ingress.hosts[0].paths[0] | string | `"/"` |  |
| vault.server.ingress.ingressClassName | string | `"nginx"` |  |
| vault.server.ingress.tls[0].hosts[0] | string | `"vault.domain.com"` |  |
| vault.server.ingress.tls[0].secretName | string | `"vault-tls"` |  |
| vault.ui.enabled | bool | `true` |  |


