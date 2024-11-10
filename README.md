# K8s System related Helm Charts

Helm chart collection that simplifies Kubernetes configuration to be production-ready.


# redis-ha

![Version: 4.27.6](https://img.shields.io/badge/Version-4.27.6-informational?style=flat-square) ![AppVersion: 7.2.4](https://img.shields.io/badge/AppVersion-7.2.4-informational?style=flat-square)

This Helm chart provides a highly available Redis implementation with a master/slave configuration and uses Sentinel sidecars for failover management

**Homepage:** <http://redis.io/>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| ssalaues | <salimsalaues@gmail.com> |  |
| dandydeveloper | <aaron.layfield@gmail.com> |  |

## Source Code

* <https://redis.io/download>
* <https://github.com/DandyDeveloper/charts/blob/master/charts/redis-ha>
* <https://github.com/oliver006/redis_exporter>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalAffinities | object | `{}` |  |
| affinity | string | `""` |  |
| auth | bool | `false` |  |
| authKey | string | `"auth"` |  |
| configmap.labels | object | `{}` |  |
| configmapTest.image.repository | string | `"koalaman/shellcheck"` |  |
| configmapTest.image.tag | string | `"v0.5.0"` |  |
| configmapTest.resources | object | `{}` |  |
| containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| containerSecurityContext.runAsNonRoot | bool | `true` |  |
| containerSecurityContext.runAsUser | int | `1000` |  |
| containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| emptyDir | object | `{}` |  |
| exporter.address | string | `"localhost"` |  |
| exporter.enabled | bool | `false` |  |
| exporter.extraArgs | object | `{}` |  |
| exporter.image | string | `"oliver006/redis_exporter"` |  |
| exporter.livenessProbe.httpGet.path | string | `"/metrics"` |  |
| exporter.livenessProbe.httpGet.port | int | `9121` |  |
| exporter.livenessProbe.initialDelaySeconds | int | `15` |  |
| exporter.livenessProbe.periodSeconds | int | `15` |  |
| exporter.livenessProbe.timeoutSeconds | int | `3` |  |
| exporter.port | int | `9121` |  |
| exporter.portName | string | `"exporter-port"` |  |
| exporter.pullPolicy | string | `"IfNotPresent"` |  |
| exporter.readinessProbe.httpGet.path | string | `"/metrics"` |  |
| exporter.readinessProbe.httpGet.port | int | `9121` |  |
| exporter.readinessProbe.initialDelaySeconds | int | `15` |  |
| exporter.readinessProbe.periodSeconds | int | `15` |  |
| exporter.readinessProbe.successThreshold | int | `2` |  |
| exporter.readinessProbe.timeoutSeconds | int | `3` |  |
| exporter.resources | object | `{}` |  |
| exporter.scrapePath | string | `"/metrics"` |  |
| exporter.serviceMonitor.enabled | bool | `false` |  |
| exporter.serviceMonitor.endpointAdditionalProperties | object | `{}` |  |
| exporter.serviceMonitor.labels | object | `{}` |  |
| exporter.tag | string | `"v1.57.0"` |  |
| extraContainers | list | `[]` |  |
| extraInitContainers | list | `[]` |  |
| extraLabels | object | `{}` |  |
| extraVolumes | list | `[]` |  |
| global.priorityClassName | string | `""` | Default priority class for all components |
| haproxy.IPv6.enabled | bool | `true` |  |
| haproxy.additionalAffinities | object | `{}` |  |
| haproxy.affinity | string | `""` |  |
| haproxy.annotations | object | `{}` |  |
| haproxy.checkFall | int | `1` |  |
| haproxy.checkInterval | string | `"1s"` |  |
| haproxy.containerPort | int | `6379` |  |
| haproxy.containerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| haproxy.containerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| haproxy.containerSecurityContext.runAsNonRoot | bool | `true` |  |
| haproxy.containerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| haproxy.deploymentStrategy | object | `{"type":"RollingUpdate"}` | Deployment strategy for the haproxy deployment |
| haproxy.emptyDir | object | `{}` |  |
| haproxy.enabled | bool | `false` |  |
| haproxy.hardAntiAffinity | bool | `true` |  |
| haproxy.image.pullPolicy | string | `"IfNotPresent"` |  |
| haproxy.image.repository | string | `"public.ecr.aws/docker/library/haproxy"` |  |
| haproxy.image.tag | string | `"2.9.4-alpine"` |  |
| haproxy.imagePullSecrets | list | `[]` |  |
| haproxy.init.resources | object | `{}` |  |
| haproxy.labels | object | `{}` |  |
| haproxy.lifecycle | object | `{}` |  |
| haproxy.metrics.enabled | bool | `false` |  |
| haproxy.metrics.port | int | `9101` |  |
| haproxy.metrics.portName | string | `"http-exporter-port"` |  |
| haproxy.metrics.scrapePath | string | `"/metrics"` |  |
| haproxy.metrics.serviceMonitor.enabled | bool | `false` |  |
| haproxy.metrics.serviceMonitor.endpointAdditionalProperties | object | `{}` |  |
| haproxy.metrics.serviceMonitor.labels | object | `{}` |  |
| haproxy.networkPolicy.annotations | object | `{}` |  |
| haproxy.networkPolicy.egressRules | list | `[]` |  |
| haproxy.networkPolicy.enabled | bool | `false` |  |
| haproxy.networkPolicy.ingressRules | list | `[]` |  |
| haproxy.networkPolicy.labels | object | `{}` |  |
| haproxy.podDisruptionBudget | object | `{}` |  |
| haproxy.readOnly.enabled | bool | `false` |  |
| haproxy.readOnly.port | int | `6380` |  |
| haproxy.replicas | int | `3` |  |
| haproxy.resources | object | `{}` |  |
| haproxy.securityContext.fsGroup | int | `99` |  |
| haproxy.securityContext.runAsNonRoot | bool | `true` |  |
| haproxy.securityContext.runAsUser | int | `99` |  |
| haproxy.service.annotations | string | `nil` |  |
| haproxy.service.externalIPs | object | `{}` |  |
| haproxy.service.labels | object | `{}` |  |
| haproxy.service.loadBalancerIP | string | `nil` |  |
| haproxy.service.type | string | `"ClusterIP"` |  |
| haproxy.serviceAccount.automountToken | bool | `false` |  |
| haproxy.serviceAccount.create | bool | `true` |  |
| haproxy.serviceAccountName | string | `"redis-sa"` |  |
| haproxy.servicePort | int | `6379` |  |
| haproxy.stickyBalancing | bool | `false` |  |
| haproxy.tests.resources | object | `{}` |  |
| haproxy.timeout.check | string | `"2s"` |  |
| haproxy.timeout.client | string | `"330s"` |  |
| haproxy.timeout.connect | string | `"4s"` |  |
| haproxy.timeout.server | string | `"330s"` |  |
| haproxy.tls.certMountPath | string | `"/tmp/"` |  |
| haproxy.tls.enabled | bool | `false` |  |
| haproxy.tls.keyName | string | `nil` |  |
| haproxy.tls.secretName | string | `""` |  |
| hardAntiAffinity | bool | `true` |  |
| hostPath.chown | bool | `true` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"public.ecr.aws/docker/library/redis"` |  |
| image.tag | string | `"7.2.4-alpine"` |  |
| imagePullSecrets | list | `[]` |  |
| init.resources | object | `{}` |  |
| labels | object | `{}` |  |
| networkPolicy.annotations | object | `{}` |  |
| networkPolicy.egressRules | list | `[]` |  |
| networkPolicy.enabled | bool | `false` |  |
| networkPolicy.ingressRules | list | `[]` |  |
| networkPolicy.labels | object | `{}` |  |
| nodeSelector | object | `{}` |  |
| persistentVolume.accessModes[0] | string | `"ReadWriteOnce"` |  |
| persistentVolume.annotations | object | `{}` |  |
| persistentVolume.enabled | bool | `true` |  |
| persistentVolume.labels | object | `{}` |  |
| persistentVolume.size | string | `"10Gi"` |  |
| podDisruptionBudget | object | `{}` |  |
| podManagementPolicy | string | `"OrderedReady"` |  |
| prometheusRule.additionalLabels | object | `{}` | Additional labels to be set in metadata. |
| prometheusRule.enabled | bool | `false` | If true, creates a Prometheus Operator PrometheusRule. |
| prometheusRule.interval | string | `"10s"` | How often rules in the group are evaluated (falls back to `global.evaluation_interval` if not set). |
| prometheusRule.namespace | string | `nil` | Namespace which Prometheus is running in. |
| prometheusRule.rules | list | `[]` | Rules spec template (see https://github.com/prometheus-operator/prometheus-operator/blob/master/Documentation/api.md#rule). |
| rbac.create | bool | `true` |  |
| redis.annotations | object | `{}` |  |
| redis.config.maxmemory | string | `"0"` |  |
| redis.config.maxmemory-policy | string | `"volatile-lru"` |  |
| redis.config.min-replicas-max-lag | int | `5` |  |
| redis.config.min-replicas-to-write | int | `1` |  |
| redis.config.rdbchecksum | string | `"yes"` |  |
| redis.config.rdbcompression | string | `"yes"` |  |
| redis.config.repl-diskless-sync | string | `"yes"` |  |
| redis.config.save | string | `"900 1"` |  |
| redis.customArgs | list | `[]` |  |
| redis.customCommand | list | `[]` |  |
| redis.disableCommands[0] | string | `"FLUSHDB"` |  |
| redis.disableCommands[1] | string | `"FLUSHALL"` |  |
| redis.envFrom | list | `[]` |  |
| redis.extraVolumeMounts | list | `[]` |  |
| redis.lifecycle.preStop.exec.command[0] | string | `"/bin/sh"` |  |
| redis.lifecycle.preStop.exec.command[1] | string | `"/readonly-config/trigger-failover-if-master.sh"` |  |
| redis.livenessProbe.failureThreshold | int | `5` |  |
| redis.livenessProbe.initialDelaySeconds | int | `30` |  |
| redis.livenessProbe.periodSeconds | int | `15` |  |
| redis.livenessProbe.successThreshold | int | `1` |  |
| redis.livenessProbe.timeoutSeconds | int | `15` |  |
| redis.masterGroupName | string | `"mymaster"` |  |
| redis.port | int | `6379` |  |
| redis.readinessProbe.failureThreshold | int | `5` |  |
| redis.readinessProbe.initialDelaySeconds | int | `30` |  |
| redis.readinessProbe.periodSeconds | int | `15` |  |
| redis.readinessProbe.successThreshold | int | `1` |  |
| redis.readinessProbe.timeoutSeconds | int | `15` |  |
| redis.resources | object | `{}` |  |
| redis.terminationGracePeriodSeconds | int | `60` |  |
| redis.updateStrategy.type | string | `"RollingUpdate"` |  |
| replicas | int | `3` |  |
| restore.existingSecret | bool | `false` |  |
| restore.s3.access_key | string | `""` |  |
| restore.s3.region | string | `""` |  |
| restore.s3.secret_key | string | `""` |  |
| restore.s3.source | bool | `false` |  |
| restore.ssh.key | string | `""` |  |
| restore.ssh.source | bool | `false` |  |
| restore.timeout | int | `600` |  |
| ro_replicas | string | `""` |  |
| securityContext.fsGroup | int | `1000` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `1000` |  |
| sentinel.auth | bool | `false` |  |
| sentinel.authKey | string | `"sentinel-password"` |  |
| sentinel.config.down-after-milliseconds | int | `10000` |  |
| sentinel.config.failover-timeout | int | `180000` |  |
| sentinel.config.maxclients | int | `10000` |  |
| sentinel.config.parallel-syncs | int | `5` |  |
| sentinel.customArgs | list | `[]` |  |
| sentinel.customCommand | list | `[]` |  |
| sentinel.extraVolumeMounts | list | `[]` |  |
| sentinel.lifecycle | object | `{}` |  |
| sentinel.livenessProbe.failureThreshold | int | `5` |  |
| sentinel.livenessProbe.initialDelaySeconds | int | `30` |  |
| sentinel.livenessProbe.periodSeconds | int | `15` |  |
| sentinel.livenessProbe.successThreshold | int | `1` |  |
| sentinel.livenessProbe.timeoutSeconds | int | `15` |  |
| sentinel.port | int | `26379` |  |
| sentinel.quorum | int | `2` |  |
| sentinel.readinessProbe.failureThreshold | int | `5` |  |
| sentinel.readinessProbe.initialDelaySeconds | int | `30` |  |
| sentinel.readinessProbe.periodSeconds | int | `15` |  |
| sentinel.readinessProbe.successThreshold | int | `3` |  |
| sentinel.readinessProbe.timeoutSeconds | int | `15` |  |
| sentinel.resources | object | `{}` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automountToken | bool | `false` |  |
| serviceAccount.create | bool | `true` |  |
| serviceLabels | object | `{}` |  |
| splitBrainDetection.interval | int | `60` |  |
| splitBrainDetection.resources | object | `{}` |  |
| sysctlImage.command | list | `[]` |  |
| sysctlImage.enabled | bool | `false` |  |
| sysctlImage.mountHostSys | bool | `false` |  |
| sysctlImage.pullPolicy | string | `"Always"` |  |
| sysctlImage.registry | string | `"public.ecr.aws/docker/library"` |  |
| sysctlImage.repository | string | `"busybox"` |  |
| sysctlImage.resources | object | `{}` |  |
| sysctlImage.tag | string | `"1.34.1"` |  |
| tls.caCertFile | string | `"ca.crt"` |  |
| tls.certFile | string | `"redis.crt"` |  |
| tls.keyFile | string | `"redis.key"` |  |
| topologySpreadConstraints.enabled | bool | `false` |  |
| topologySpreadConstraints.maxSkew | string | `""` |  |
| topologySpreadConstraints.topologyKey | string | `""` |  |
| topologySpreadConstraints.whenUnsatisfiable | string | `""` |  |


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)


# argo-cd

![Version: 7.7.0](https://img.shields.io/badge/Version-7.7.0-informational?style=flat-square) ![AppVersion: v2.13.0](https://img.shields.io/badge/AppVersion-v2.13.0-informational?style=flat-square)

A Helm chart for Argo CD, a declarative, GitOps continuous delivery tool for Kubernetes.

**Homepage:** <https://github.com/argoproj/argo-helm>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| argoproj |  | <https://argoproj.github.io/> |

## Source Code

* <https://github.com/argoproj/argo-helm/tree/main/charts/argo-cd>
* <https://github.com/argoproj/argo-cd>

## Requirements

Kubernetes: `>=1.25.0-0`

| Repository | Name | Version |
|------------|------|---------|
| https://dandydeveloper.github.io/charts/ | redis-ha | 4.27.6 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| apiVersionOverrides | object | `{}` |  |
| applicationSet.affinity | object | `{}` (defaults to global.affinity preset) | Assign custom [affinity] rules |
| applicationSet.allowAnyNamespace | bool | `false` | Enable ApplicationSet in any namespace feature |
| applicationSet.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account into the pod. |
| applicationSet.certificate.additionalHosts | list | `[]` | Certificate Subject Alternate Names (SANs) |
| applicationSet.certificate.annotations | object | `{}` | Annotations to be applied to the ApplicationSet Certificate |
| applicationSet.certificate.domain | string | `""` (defaults to global.domain) | Certificate primary domain (commonName) |
| applicationSet.certificate.duration | string | `""` (defaults to 2160h = 90d if not specified) | The requested 'duration' (i.e. lifetime) of the certificate. # Ref: https://cert-manager.io/docs/usage/certificate/#renewal |
| applicationSet.certificate.enabled | bool | `false` | Deploy a Certificate resource (requires cert-manager) |
| applicationSet.certificate.issuer.group | string | `""` | Certificate issuer group. Set if using an external issuer. Eg. `cert-manager.io` |
| applicationSet.certificate.issuer.kind | string | `""` | Certificate issuer kind. Either `Issuer` or `ClusterIssuer` |
| applicationSet.certificate.issuer.name | string | `""` | Certificate issuer name. Eg. `letsencrypt` |
| applicationSet.certificate.privateKey.algorithm | string | `"RSA"` | Algorithm used to generate certificate private key. One of: `RSA`, `Ed25519` or `ECDSA` |
| applicationSet.certificate.privateKey.encoding | string | `"PKCS1"` | The private key cryptography standards (PKCS) encoding for private key. Either: `PCKS1` or `PKCS8` |
| applicationSet.certificate.privateKey.rotationPolicy | string | `"Never"` | Rotation policy of private key when certificate is re-issued. Either: `Never` or `Always` |
| applicationSet.certificate.privateKey.size | int | `2048` | Key bit size of the private key. If algorithm is set to `Ed25519`, size is ignored. |
| applicationSet.certificate.renewBefore | string | `""` (defaults to 360h = 15d if not specified) | How long before the expiry a certificate should be renewed. # Ref: https://cert-manager.io/docs/usage/certificate/#renewal |
| applicationSet.containerPorts.metrics | int | `8080` | Metrics container port |
| applicationSet.containerPorts.probe | int | `8081` | Probe container port |
| applicationSet.containerPorts.webhook | int | `7000` | Webhook container port |
| applicationSet.containerSecurityContext | object | See [values.yaml] | ApplicationSet controller container-level security context |
| applicationSet.deploymentAnnotations | object | `{}` | Annotations to be added to ApplicationSet controller Deployment |
| applicationSet.deploymentStrategy | object | `{}` | Deployment strategy to be added to the ApplicationSet controller Deployment |
| applicationSet.dnsConfig | object | `{}` | [DNS configuration] |
| applicationSet.dnsPolicy | string | `"ClusterFirst"` | Alternative DNS policy for ApplicationSet controller pods |
| applicationSet.emptyDir.sizeLimit | string | `""` (defaults not set if not specified i.e. no size limit) | EmptyDir size limit for applicationSet controller |
| applicationSet.extraArgs | list | `[]` | ApplicationSet controller command line flags |
| applicationSet.extraContainers | list | `[]` | Additional containers to be added to the ApplicationSet controller pod # Note: Supports use of custom Helm templates |
| applicationSet.extraEnv | list | `[]` | Environment variables to pass to the ApplicationSet controller |
| applicationSet.extraEnvFrom | list | `[]` (See [values.yaml]) | envFrom to pass to the ApplicationSet controller |
| applicationSet.extraVolumeMounts | list | `[]` | List of extra mounts to add (normally used with extraVolumes) |
| applicationSet.extraVolumes | list | `[]` | List of extra volumes to add |
| applicationSet.image.imagePullPolicy | string | `""` (defaults to global.image.imagePullPolicy) | Image pull policy for the ApplicationSet controller |
| applicationSet.image.repository | string | `""` (defaults to global.image.repository) | Repository to use for the ApplicationSet controller |
| applicationSet.image.tag | string | `""` (defaults to global.image.tag) | Tag to use for the ApplicationSet controller |
| applicationSet.imagePullSecrets | list | `[]` (defaults to global.imagePullSecrets) | If defined, uses a Secret to pull an image from a private Docker registry or repository. |
| applicationSet.ingress.annotations | object | `{}` | Additional ingress annotations |
| applicationSet.ingress.enabled | bool | `false` | Enable an ingress resource for ApplicationSet webhook |
| applicationSet.ingress.extraHosts | list | `[]` (See [values.yaml]) | The list of additional hostnames to be covered by ingress record |
| applicationSet.ingress.extraPaths | list | `[]` (See [values.yaml]) | Additional ingress paths |
| applicationSet.ingress.extraRules | list | `[]` (See [values.yaml]) | Additional ingress rules # Note: Supports use of custom Helm templates |
| applicationSet.ingress.extraTls | list | `[]` (See [values.yaml]) | Additional ingress TLS configuration |
| applicationSet.ingress.hostname | string | `""` (defaults to global.domain) | Argo CD ApplicationSet hostname |
| applicationSet.ingress.ingressClassName | string | `""` | Defines which ingress ApplicationSet controller will implement the resource |
| applicationSet.ingress.labels | object | `{}` | Additional ingress labels |
| applicationSet.ingress.path | string | `"/api/webhook"` | List of ingress paths |
| applicationSet.ingress.pathType | string | `"Prefix"` | Ingress path type. One of `Exact`, `Prefix` or `ImplementationSpecific` |
| applicationSet.ingress.tls | bool | `false` | Enable TLS configuration for the hostname defined at `applicationSet.webhook.ingress.hostname` # TLS certificate will be retrieved from a TLS secret with name:`argocd-applicationset-controller-tls` |
| applicationSet.initContainers | list | `[]` | Init containers to add to the ApplicationSet controller pod # Note: Supports use of custom Helm templates |
| applicationSet.livenessProbe.enabled | bool | `false` | Enable Kubernetes liveness probe for ApplicationSet controller |
| applicationSet.livenessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| applicationSet.livenessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| applicationSet.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| applicationSet.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| applicationSet.livenessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| applicationSet.metrics.enabled | bool | `false` | Deploy metrics service |
| applicationSet.metrics.service.annotations | object | `{}` | Metrics service annotations |
| applicationSet.metrics.service.clusterIP | string | `""` | Metrics service clusterIP. `None` makes a "headless service" (no virtual IP) |
| applicationSet.metrics.service.labels | object | `{}` | Metrics service labels |
| applicationSet.metrics.service.portName | string | `"http-metrics"` | Metrics service port name |
| applicationSet.metrics.service.servicePort | int | `8080` | Metrics service port |
| applicationSet.metrics.service.type | string | `"ClusterIP"` | Metrics service type |
| applicationSet.metrics.serviceMonitor.additionalLabels | object | `{}` | Prometheus ServiceMonitor labels |
| applicationSet.metrics.serviceMonitor.annotations | object | `{}` | Prometheus ServiceMonitor annotations |
| applicationSet.metrics.serviceMonitor.enabled | bool | `false` | Enable a prometheus ServiceMonitor |
| applicationSet.metrics.serviceMonitor.interval | string | `"30s"` | Prometheus ServiceMonitor interval |
| applicationSet.metrics.serviceMonitor.metricRelabelings | list | `[]` | Prometheus [MetricRelabelConfigs] to apply to samples before ingestion |
| applicationSet.metrics.serviceMonitor.namespace | string | `""` | Prometheus ServiceMonitor namespace |
| applicationSet.metrics.serviceMonitor.relabelings | list | `[]` | Prometheus [RelabelConfigs] to apply to samples before scraping |
| applicationSet.metrics.serviceMonitor.scheme | string | `""` | Prometheus ServiceMonitor scheme |
| applicationSet.metrics.serviceMonitor.scrapeTimeout | string | `""` | Prometheus ServiceMonitor scrapeTimeout. If empty, Prometheus uses the global scrape timeout unless it is less than the target's scrape interval value in which the latter is used. |
| applicationSet.metrics.serviceMonitor.selector | object | `{}` | Prometheus ServiceMonitor selector |
| applicationSet.metrics.serviceMonitor.tlsConfig | object | `{}` | Prometheus ServiceMonitor tlsConfig |
| applicationSet.name | string | `"applicationset-controller"` | ApplicationSet controller name string |
| applicationSet.nodeSelector | object | `{}` (defaults to global.nodeSelector) | [Node selector] |
| applicationSet.pdb.annotations | object | `{}` | Annotations to be added to ApplicationSet controller pdb |
| applicationSet.pdb.enabled | bool | `false` | Deploy a [PodDisruptionBudget] for the ApplicationSet controller |
| applicationSet.pdb.labels | object | `{}` | Labels to be added to ApplicationSet controller pdb |
| applicationSet.pdb.maxUnavailable | string | `""` | Number of pods that are unavailable after eviction as number or percentage (eg.: 50%). # Has higher precedence over `applicationSet.pdb.minAvailable` |
| applicationSet.pdb.minAvailable | string | `""` (defaults to 0 if not specified) | Number of pods that are available after eviction as number or percentage (eg.: 50%) |
| applicationSet.podAnnotations | object | `{}` | Annotations for the ApplicationSet controller pods |
| applicationSet.podLabels | object | `{}` | Labels for the ApplicationSet controller pods |
| applicationSet.priorityClassName | string | `""` (defaults to global.priorityClassName) | Priority class for the ApplicationSet controller pods |
| applicationSet.readinessProbe.enabled | bool | `false` | Enable Kubernetes liveness probe for ApplicationSet controller |
| applicationSet.readinessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| applicationSet.readinessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| applicationSet.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| applicationSet.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| applicationSet.readinessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| applicationSet.replicas | int | `1` | The number of ApplicationSet controller pods to run |
| applicationSet.resources | object | `{}` | Resource limits and requests for the ApplicationSet controller pods. |
| applicationSet.runtimeClassName | string | `""` (defaults to global.runtimeClassName) | Runtime class name for the ApplicationSet controller |
| applicationSet.service.annotations | object | `{}` | ApplicationSet service annotations |
| applicationSet.service.labels | object | `{}` | ApplicationSet service labels |
| applicationSet.service.port | int | `7000` | ApplicationSet service port |
| applicationSet.service.portName | string | `"http-webhook"` | ApplicationSet service port name |
| applicationSet.service.type | string | `"ClusterIP"` | ApplicationSet service type |
| applicationSet.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| applicationSet.serviceAccount.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account |
| applicationSet.serviceAccount.create | bool | `true` | Create ApplicationSet controller service account |
| applicationSet.serviceAccount.labels | object | `{}` | Labels applied to created service account |
| applicationSet.serviceAccount.name | string | `"argocd-applicationset-controller"` | ApplicationSet controller service account name |
| applicationSet.terminationGracePeriodSeconds | int | `30` | terminationGracePeriodSeconds for container lifecycle hook |
| applicationSet.tolerations | list | `[]` (defaults to global.tolerations) | [Tolerations] for use with node taints |
| applicationSet.topologySpreadConstraints | list | `[]` (defaults to global.topologySpreadConstraints) | Assign custom [TopologySpreadConstraints] rules to the ApplicationSet controller # Ref: https://kubernetes.io/docs/concepts/workloads/pods/pod-topology-spread-constraints/ # If labelSelector is left out, it will default to the labelSelector configuration of the deployment |
| configs.clusterCredentials | object | `{}` (See [values.yaml]) | Provide one or multiple [external cluster credentials] # Ref: # - https://argo-cd.readthedocs.io/en/stable/operator-manual/declarative-setup/#clusters # - https://argo-cd.readthedocs.io/en/stable/operator-manual/security/#external-cluster-credentials # - https://argo-cd.readthedocs.io/en/stable/user-guide/projects/#project-scoped-repositories-and-clusters |
| configs.cm."admin.enabled" | bool | `true` | Enable local admin user # Ref: https://argo-cd.readthedocs.io/en/latest/faq/#how-to-disable-admin-user |
| configs.cm."application.instanceLabelKey" | string | `"argocd.argoproj.io/instance"` | The name of tracking label used by Argo CD for resource pruning |
| configs.cm."exec.enabled" | bool | `false` | Enable exec feature in Argo UI # Ref: https://argo-cd.readthedocs.io/en/latest/operator-manual/rbac/#exec-resource |
| configs.cm."server.rbac.log.enforce.enable" | bool | `false` | Enable logs RBAC enforcement # Ref: https://argo-cd.readthedocs.io/en/latest/operator-manual/upgrading/2.3-2.4/#enable-logs-rbac-enforcement |
| configs.cm."statusbadge.enabled" | bool | `false` | Enable Status Badge # Ref: https://argo-cd.readthedocs.io/en/stable/user-guide/status-badge/ |
| configs.cm."timeout.hard.reconciliation" | string | `"0s"` | Timeout to refresh application data as well as target manifests cache |
| configs.cm."timeout.reconciliation" | string | `"180s"` | Timeout to discover if a new manifests version got published to the repository |
| configs.cm.annotations | object | `{}` | Annotations to be added to argocd-cm configmap |
| configs.cm.create | bool | `true` | Create the argocd-cm configmap for [declarative setup] |
| configs.cmp.annotations | object | `{}` | Annotations to be added to argocd-cmp-cm configmap |
| configs.cmp.create | bool | `false` | Create the argocd-cmp-cm configmap |
| configs.cmp.plugins | object | `{}` | Plugin yaml files to be added to argocd-cmp-cm |
| configs.credentialTemplates | object | `{}` | Repository credentials to be used as Templates for other repos # Creates a secret for each key/value specified below to create repository credentials |
| configs.credentialTemplatesAnnotations | object | `{}` | Annotations to be added to `configs.credentialTemplates` Secret |
| configs.gpg.annotations | object | `{}` | Annotations to be added to argocd-gpg-keys-cm configmap |
| configs.gpg.keys | object | `{}` (See [values.yaml]) | [GnuPG] public keys to add to the keyring # Note: Public keys should be exported with `gpg --export --armor <KEY>` |
| configs.params."application.namespaces" | string | `""` | Enables [Applications in any namespace] # List of additional namespaces where applications may be created in and reconciled from. # The namespace where Argo CD is installed to will always be allowed. # Set comma-separated list. (e.g. app-team-one, app-team-two) |
| configs.params."applicationsetcontroller.enable.progressive.syncs" | bool | `false` | Enables use of the Progressive Syncs capability |
| configs.params."applicationsetcontroller.namespaces" | string | `""` (default is only the ns where the controller is installed) | A list of glob patterns specifying where to look for ApplicationSet resources. (e.g. `"argocd,argocd-appsets-*"`) # For more information: https://argo-cd.readthedocs.io/en/stable/operator-manual/applicationset/Appset-Any-Namespace/ |
| configs.params."applicationsetcontroller.policy" | string | `"sync"` | Modify how application is synced between the generator and the cluster. One of: `sync`, `create-only`, `create-update`, `create-delete` |
| configs.params."controller.ignore.normalizer.jq.timeout" | string | `"1s"` | JQ Path expression timeout # By default, the evaluation of a JQPathExpression is limited to one second. # If you encounter a "JQ patch execution timed out" error message due to a complex JQPathExpression # that requires more time to evaluate, you can extend the timeout period. |
| configs.params."controller.operation.processors" | int | `10` | Number of application operation processors |
| configs.params."controller.repo.server.timeout.seconds" | int | `60` | Repo server RPC call timeout seconds. |
| configs.params."controller.self.heal.timeout.seconds" | int | `5` | Specifies timeout between application self heal attempts |
| configs.params."controller.status.processors" | int | `20` | Number of application status processors |
| configs.params."otlp.address" | string | `""` | Open-Telemetry collector address: (e.g. "otel-collector:4317") |
| configs.params."reposerver.parallelism.limit" | int | `0` | Limit on number of concurrent manifests generate requests. Any value less the 1 means no limit. |
| configs.params."server.basehref" | string | `"/"` | Value for base href in index.html. Used if Argo CD is running behind reverse proxy under subpath different from / |
| configs.params."server.disable.auth" | bool | `false` | Disable Argo CD RBAC for user authentication |
| configs.params."server.enable.gzip" | bool | `true` | Enable GZIP compression |
| configs.params."server.enable.proxy.extension" | bool | `false` | Enable proxy extension feature. (proxy extension is in Alpha phase) |
| configs.params."server.insecure" | bool | `false` | Run server without TLS # NOTE: This value should be set when you generate params by other means as it changes ports used by ingress template. |
| configs.params."server.rootpath" | string | `""` | Used if Argo CD is running behind reverse proxy under subpath different from / |
| configs.params."server.staticassets" | string | `"/shared/app"` | Directory path that contains additional static assets |
| configs.params."server.x.frame.options" | string | `"sameorigin"` | Set X-Frame-Options header in HTTP responses to value. To disable, set to "". |
| configs.params.annotations | object | `{}` | Annotations to be added to the argocd-cmd-params-cm ConfigMap |
| configs.params.create | bool | `true` | Create the argocd-cmd-params-cm configmap If false, it is expected the configmap will be created by something else. |
| configs.rbac."policy.csv" | string | `''` (See [values.yaml]) | File containing user-defined policies and role definitions. |
| configs.rbac."policy.default" | string | `""` | The name of the default role which Argo CD will falls back to, when authorizing API requests (optional). If omitted or empty, users may be still be able to login, but will see no apps, projects, etc... |
| configs.rbac."policy.matchMode" | string | `"glob"` | Matcher function for Casbin, `glob` for glob matcher and `regex` for regex matcher. |
| configs.rbac.annotations | object | `{}` | Annotations to be added to argocd-rbac-cm configmap |
| configs.rbac.create | bool | `true` | Create the argocd-rbac-cm configmap with ([Argo CD RBAC policy]) definitions. If false, it is expected the configmap will be created by something else. Argo CD will not work if there is no configmap created with the name above. |
| configs.rbac.scopes | string | `"[groups]"` | OIDC scopes to examine during rbac enforcement (in addition to `sub` scope). The scope value can be a string, or a list of strings. |
| configs.repositories | object | `{}` | Repositories list to be used by applications # Creates a secret for each key/value specified below to create repositories # Note: the last example in the list would use a repository credential template, configured under "configs.credentialTemplates". |
| configs.repositoriesAnnotations | object | `{}` | Annotations to be added to `configs.repositories` Secret |
| configs.secret.annotations | object | `{}` | Annotations to be added to argocd-secret |
| configs.secret.argocdServerAdminPassword | string | `""` | Bcrypt hashed admin password # Argo expects the password in the secret to be bcrypt hashed. You can create this hash with # `htpasswd -nbBC 10 "" $ARGO_PWD | tr -d ':\n' | sed 's/$2y/$2a/'` |
| configs.secret.argocdServerAdminPasswordMtime | string | `""` (defaults to current time) | Admin password modification time. Eg. `"2006-01-02T15:04:05Z"` |
| configs.secret.azureDevops.password | string | `""` | Shared secret password for authenticating Azure DevOps webhook events |
| configs.secret.azureDevops.username | string | `""` | Shared secret username for authenticating Azure DevOps webhook events |
| configs.secret.bitbucketServerSecret | string | `""` | Shared secret for authenticating BitbucketServer webhook events |
| configs.secret.bitbucketUUID | string | `""` | UUID for authenticating Bitbucket webhook events |
| configs.secret.createSecret | bool | `true` | Create the argocd-secret |
| configs.secret.extra | object | `{}` | add additional secrets to be added to argocd-secret # Custom secrets. Useful for injecting SSO secrets into environment variables. # Ref: https://argo-cd.readthedocs.io/en/stable/operator-manual/user-management/#sensitive-data-and-sso-client-secrets # Note that all values must be non-empty. |
| configs.secret.githubSecret | string | `""` | Shared secret for authenticating GitHub webhook events |
| configs.secret.gitlabSecret | string | `""` | Shared secret for authenticating GitLab webhook events |
| configs.secret.gogsSecret | string | `""` | Shared secret for authenticating Gogs webhook events |
| configs.secret.labels | object | `{}` | Labels to be added to argocd-secret |
| configs.ssh.annotations | object | `{}` | Annotations to be added to argocd-ssh-known-hosts-cm configmap |
| configs.ssh.extraHosts | string | `""` | Additional known hosts for private repositories |
| configs.ssh.knownHosts | string | See [values.yaml] | Known hosts to be added to the known host list by default. |
| configs.styles | string | `""` (See [values.yaml]) | Define custom [CSS styles] for your argo instance. This setting will automatically mount the provided CSS and reference it in the argo configuration. # Ref: https://argo-cd.readthedocs.io/en/stable/operator-manual/custom-styles/ |
| configs.tls.annotations | object | `{}` | Annotations to be added to argocd-tls-certs-cm configmap |
| configs.tls.certificates | object | `{}` (See [values.yaml]) | TLS certificates for Git repositories |
| controller.affinity | object | `{}` (defaults to global.affinity preset) | Assign custom [affinity] rules to the deployment |
| controller.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account into the pod. |
| controller.clusterRoleRules.enabled | bool | `false` | Enable custom rules for the application controller's ClusterRole resource |
| controller.clusterRoleRules.rules | list | `[]` | List of custom rules for the application controller's ClusterRole resource |
| controller.containerPorts.metrics | int | `8082` | Metrics container port |
| controller.containerSecurityContext | object | See [values.yaml] | Application controller container-level security context |
| controller.deploymentAnnotations | object | `{}` | Annotations for the application controller Deployment |
| controller.dnsConfig | object | `{}` | [DNS configuration] |
| controller.dnsPolicy | string | `"ClusterFirst"` | Alternative DNS policy for application controller pods |
| controller.dynamicClusterDistribution | bool | `false` | Enable dynamic cluster distribution (alpha) Ref: https://argo-cd.readthedocs.io/en/stable/operator-manual/dynamic-cluster-distribution # This is done using a deployment instead of a statefulSet # When replicas are added or removed, the sharding algorithm is re-run to ensure that the # clusters are distributed according to the algorithm. If the algorithm is well-balanced, # like round-robin, then the shards will be well-balanced. |
| controller.emptyDir.sizeLimit | string | `""` (defaults not set if not specified i.e. no size limit) | EmptyDir size limit for application controller |
| controller.env | list | `[]` | Environment variables to pass to application controller |
| controller.envFrom | list | `[]` (See [values.yaml]) | envFrom to pass to application controller |
| controller.extraArgs | list | `[]` | Additional command line arguments to pass to application controller |
| controller.extraContainers | list | `[]` | Additional containers to be added to the application controller pod # Note: Supports use of custom Helm templates |
| controller.heartbeatTime | int | `10` | Application controller heartbeat time Ref: https://argo-cd.readthedocs.io/en/stable/operator-manual/dynamic-cluster-distribution/#working-of-dynamic-distribution |
| controller.hostNetwork | bool | `false` | Host Network for application controller pods |
| controller.image.imagePullPolicy | string | `""` (defaults to global.image.imagePullPolicy) | Image pull policy for the application controller |
| controller.image.repository | string | `""` (defaults to global.image.repository) | Repository to use for the application controller |
| controller.image.tag | string | `""` (defaults to global.image.tag) | Tag to use for the application controller |
| controller.imagePullSecrets | list | `[]` (defaults to global.imagePullSecrets) | Secrets with credentials to pull images from a private registry |
| controller.initContainers | list | `[]` | Init containers to add to the application controller pod # If your target Kubernetes cluster(s) require a custom credential (exec) plugin # you could use this (and the same in the server pod) to provide such executable # Ref: https://kubernetes.io/docs/reference/access-authn-authz/authentication/#client-go-credential-plugins # Note: Supports use of custom Helm templates |
| controller.metrics.applicationLabels.enabled | bool | `false` | Enables additional labels in argocd_app_labels metric |
| controller.metrics.applicationLabels.labels | list | `[]` | Additional labels |
| controller.metrics.enabled | bool | `false` | Deploy metrics service |
| controller.metrics.rules.additionalLabels | object | `{}` | PrometheusRule labels |
| controller.metrics.rules.annotations | object | `{}` | PrometheusRule annotations |
| controller.metrics.rules.enabled | bool | `false` | Deploy a PrometheusRule for the application controller |
| controller.metrics.rules.namespace | string | `""` | PrometheusRule namespace |
| controller.metrics.rules.selector | object | `{}` | PrometheusRule selector |
| controller.metrics.rules.spec | list | `[]` | PrometheusRule.Spec for the application controller |
| controller.metrics.scrapeTimeout | string | `""` | Prometheus ServiceMonitor scrapeTimeout. If empty, Prometheus uses the global scrape timeout unless it is less than the target's scrape interval value in which the latter is used. |
| controller.metrics.service.annotations | object | `{}` | Metrics service annotations |
| controller.metrics.service.clusterIP | string | `""` | Metrics service clusterIP. `None` makes a "headless service" (no virtual IP) |
| controller.metrics.service.labels | object | `{}` | Metrics service labels |
| controller.metrics.service.portName | string | `"http-metrics"` | Metrics service port name |
| controller.metrics.service.servicePort | int | `8082` | Metrics service port |
| controller.metrics.service.type | string | `"ClusterIP"` | Metrics service type |
| controller.metrics.serviceMonitor.additionalLabels | object | `{}` | Prometheus ServiceMonitor labels |
| controller.metrics.serviceMonitor.annotations | object | `{}` | Prometheus ServiceMonitor annotations |
| controller.metrics.serviceMonitor.enabled | bool | `false` | Enable a prometheus ServiceMonitor |
| controller.metrics.serviceMonitor.interval | string | `"30s"` | Prometheus ServiceMonitor interval |
| controller.metrics.serviceMonitor.metricRelabelings | list | `[]` | Prometheus [MetricRelabelConfigs] to apply to samples before ingestion |
| controller.metrics.serviceMonitor.namespace | string | `""` | Prometheus ServiceMonitor namespace |
| controller.metrics.serviceMonitor.relabelings | list | `[]` | Prometheus [RelabelConfigs] to apply to samples before scraping |
| controller.metrics.serviceMonitor.scheme | string | `""` | Prometheus ServiceMonitor scheme |
| controller.metrics.serviceMonitor.selector | object | `{}` | Prometheus ServiceMonitor selector |
| controller.metrics.serviceMonitor.tlsConfig | object | `{}` | Prometheus ServiceMonitor tlsConfig |
| controller.name | string | `"application-controller"` | Application controller name string |
| controller.nodeSelector | object | `{}` (defaults to global.nodeSelector) | [Node selector] |
| controller.pdb.annotations | object | `{}` | Annotations to be added to application controller pdb |
| controller.pdb.enabled | bool | `false` | Deploy a [PodDisruptionBudget] for the application controller |
| controller.pdb.labels | object | `{}` | Labels to be added to application controller pdb |
| controller.pdb.maxUnavailable | string | `""` | Number of pods that are unavailable after eviction as number or percentage (eg.: 50%). # Has higher precedence over `controller.pdb.minAvailable` |
| controller.pdb.minAvailable | string | `""` (defaults to 0 if not specified) | Number of pods that are available after eviction as number or percentage (eg.: 50%) |
| controller.podAnnotations | object | `{}` | Annotations to be added to application controller pods |
| controller.podLabels | object | `{}` | Labels to be added to application controller pods |
| controller.priorityClassName | string | `""` (defaults to global.priorityClassName) | Priority class for the application controller pods |
| controller.readinessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| controller.readinessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| controller.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| controller.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| controller.readinessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| controller.replicas | int | `1` | The number of application controller pods to run. Additional replicas will cause sharding of managed clusters across number of replicas. # With dynamic cluster distribution turned on, sharding of the clusters will gracefully # rebalance if the number of replica's changes or one becomes unhealthy. (alpha) |
| controller.resources | object | `{}` | Resource limits and requests for the application controller pods |
| controller.revisionHistoryLimit | int | `5` | Maximum number of controller revisions that will be maintained in StatefulSet history |
| controller.runtimeClassName | string | `""` (defaults to global.runtimeClassName) | Runtime class name for the application controller |
| controller.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| controller.serviceAccount.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account |
| controller.serviceAccount.create | bool | `true` | Create a service account for the application controller |
| controller.serviceAccount.labels | object | `{}` | Labels applied to created service account |
| controller.serviceAccount.name | string | `"argocd-application-controller"` | Service account name |
| controller.statefulsetAnnotations | object | `{}` | Annotations for the application controller StatefulSet |
| controller.terminationGracePeriodSeconds | int | `30` | terminationGracePeriodSeconds for container lifecycle hook |
| controller.tolerations | list | `[]` (defaults to global.tolerations) | [Tolerations] for use with node taints |
| controller.topologySpreadConstraints | list | `[]` (defaults to global.topologySpreadConstraints) | Assign custom [TopologySpreadConstraints] rules to the application controller # Ref: https://kubernetes.io/docs/concepts/workloads/pods/pod-topology-spread-constraints/ # If labelSelector is left out, it will default to the labelSelector configuration of the deployment |
| controller.volumeMounts | list | `[]` | Additional volumeMounts to the application controller main container |
| controller.volumes | list | `[]` | Additional volumes to the application controller pod |
| crds.additionalLabels | object | `{}` | Addtional labels to be added to all CRDs |
| crds.annotations | object | `{}` | Annotations to be added to all CRDs |
| crds.install | bool | `true` | Install and upgrade CRDs |
| crds.keep | bool | `true` | Keep CRDs on chart uninstall |
| createAggregateRoles | bool | `false` | Create aggregated roles that extend existing cluster roles to interact with argo-cd resources # Ref: https://kubernetes.io/docs/reference/access-authn-authz/rbac/#aggregated-clusterroles |
| createClusterRoles | bool | `true` | Create cluster roles for cluster-wide installation. # Used when you manage applications in the same cluster where Argo CD runs |
| dex.affinity | object | `{}` (defaults to global.affinity preset) | Assign custom [affinity] rules to the deployment |
| dex.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account into the pod. |
| dex.certificateSecret.annotations | object | `{}` | Annotations to be added to argocd-dex-server-tls secret |
| dex.certificateSecret.ca | string | `""` | Certificate authority. Required for self-signed certificates. |
| dex.certificateSecret.crt | string | `""` | Certificate data. Must contain SANs of Dex service (ie: argocd-dex-server, argocd-dex-server.argo-cd.svc) |
| dex.certificateSecret.enabled | bool | `false` | Create argocd-dex-server-tls secret |
| dex.certificateSecret.key | string | `""` | Certificate private key |
| dex.certificateSecret.labels | object | `{}` | Labels to be added to argocd-dex-server-tls secret |
| dex.containerPorts.grpc | int | `5557` | gRPC container port |
| dex.containerPorts.http | int | `5556` | HTTP container port |
| dex.containerPorts.metrics | int | `5558` | Metrics container port |
| dex.containerSecurityContext | object | See [values.yaml] | Dex container-level security context |
| dex.deploymentAnnotations | object | `{}` | Annotations to be added to the Dex server Deployment |
| dex.deploymentStrategy | object | `{}` | Deployment strategy to be added to the Dex server Deployment |
| dex.dnsConfig | object | `{}` | [DNS configuration] |
| dex.dnsPolicy | string | `"ClusterFirst"` | Alternative DNS policy for Dex server pods |
| dex.emptyDir.sizeLimit | string | `""` (defaults not set if not specified i.e. no size limit) | EmptyDir size limit for Dex server |
| dex.enabled | bool | `true` | Enable dex |
| dex.env | list | `[]` | Environment variables to pass to the Dex server |
| dex.envFrom | list | `[]` (See [values.yaml]) | envFrom to pass to the Dex server |
| dex.extraArgs | list | `[]` | Additional command line arguments to pass to the Dex server |
| dex.extraContainers | list | `[]` | Additional containers to be added to the dex pod # Note: Supports use of custom Helm templates |
| dex.image.imagePullPolicy | string | `""` (defaults to global.image.imagePullPolicy) | Dex imagePullPolicy |
| dex.image.repository | string | `"ghcr.io/dexidp/dex"` | Dex image repository |
| dex.image.tag | string | `"v2.41.1"` | Dex image tag |
| dex.imagePullSecrets | list | `[]` (defaults to global.imagePullSecrets) | Secrets with credentials to pull images from a private registry |
| dex.initContainers | list | `[]` | Init containers to add to the dex pod # Note: Supports use of custom Helm templates |
| dex.initImage.imagePullPolicy | string | `""` (defaults to global.image.imagePullPolicy) | Argo CD init image imagePullPolicy |
| dex.initImage.repository | string | `""` (defaults to global.image.repository) | Argo CD init image repository |
| dex.initImage.resources | object | `{}` (defaults to dex.resources) | Argo CD init image resources |
| dex.initImage.tag | string | `""` (defaults to global.image.tag) | Argo CD init image tag |
| dex.livenessProbe.enabled | bool | `false` | Enable Kubernetes liveness probe for Dex >= 2.28.0 |
| dex.livenessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| dex.livenessProbe.httpPath | string | `"/healthz/live"` | Http path to use for the liveness probe |
| dex.livenessProbe.httpPort | string | `"metrics"` | Http port to use for the liveness probe |
| dex.livenessProbe.httpScheme | string | `"HTTP"` | Scheme to use for for the liveness probe (can be HTTP or HTTPS) |
| dex.livenessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| dex.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| dex.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| dex.livenessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| dex.logFormat | string | `""` (defaults to global.logging.format) | Dex log format. Either `text` or `json` |
| dex.logLevel | string | `""` (defaults to global.logging.level) | Dex log level. One of: `debug`, `info`, `warn`, `error` |
| dex.metrics.enabled | bool | `false` | Deploy metrics service |
| dex.metrics.service.annotations | object | `{}` | Metrics service annotations |
| dex.metrics.service.labels | object | `{}` | Metrics service labels |
| dex.metrics.service.portName | string | `"http-metrics"` | Metrics service port name |
| dex.metrics.serviceMonitor.additionalLabels | object | `{}` | Prometheus ServiceMonitor labels |
| dex.metrics.serviceMonitor.annotations | object | `{}` | Prometheus ServiceMonitor annotations |
| dex.metrics.serviceMonitor.enabled | bool | `false` | Enable a prometheus ServiceMonitor |
| dex.metrics.serviceMonitor.interval | string | `"30s"` | Prometheus ServiceMonitor interval |
| dex.metrics.serviceMonitor.metricRelabelings | list | `[]` | Prometheus [MetricRelabelConfigs] to apply to samples before ingestion |
| dex.metrics.serviceMonitor.namespace | string | `""` | Prometheus ServiceMonitor namespace |
| dex.metrics.serviceMonitor.relabelings | list | `[]` | Prometheus [RelabelConfigs] to apply to samples before scraping |
| dex.metrics.serviceMonitor.scheme | string | `""` | Prometheus ServiceMonitor scheme |
| dex.metrics.serviceMonitor.selector | object | `{}` | Prometheus ServiceMonitor selector |
| dex.metrics.serviceMonitor.tlsConfig | object | `{}` | Prometheus ServiceMonitor tlsConfig |
| dex.name | string | `"dex-server"` | Dex name |
| dex.nodeSelector | object | `{}` (defaults to global.nodeSelector) | [Node selector] |
| dex.pdb.annotations | object | `{}` | Annotations to be added to Dex server pdb |
| dex.pdb.enabled | bool | `false` | Deploy a [PodDisruptionBudget] for the Dex server |
| dex.pdb.labels | object | `{}` | Labels to be added to Dex server pdb |
| dex.pdb.maxUnavailable | string | `""` | Number of pods that are unavailble after eviction as number or percentage (eg.: 50%). # Has higher precedence over `dex.pdb.minAvailable` |
| dex.pdb.minAvailable | string | `""` (defaults to 0 if not specified) | Number of pods that are available after eviction as number or percentage (eg.: 50%) |
| dex.podAnnotations | object | `{}` | Annotations to be added to the Dex server pods |
| dex.podLabels | object | `{}` | Labels to be added to the Dex server pods |
| dex.priorityClassName | string | `""` (defaults to global.priorityClassName) | Priority class for the dex pods |
| dex.readinessProbe.enabled | bool | `false` | Enable Kubernetes readiness probe for Dex >= 2.28.0 |
| dex.readinessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| dex.readinessProbe.httpPath | string | `"/healthz/ready"` | Http path to use for the readiness probe |
| dex.readinessProbe.httpPort | string | `"metrics"` | Http port to use for the readiness probe |
| dex.readinessProbe.httpScheme | string | `"HTTP"` | Scheme to use for for the liveness probe (can be HTTP or HTTPS) |
| dex.readinessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| dex.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| dex.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| dex.readinessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| dex.resources | object | `{}` | Resource limits and requests for dex |
| dex.runtimeClassName | string | `""` (defaults to global.runtimeClassName) | Runtime class name for Dex |
| dex.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| dex.serviceAccount.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account |
| dex.serviceAccount.create | bool | `true` | Create dex service account |
| dex.serviceAccount.name | string | `"argocd-dex-server"` | Dex service account name |
| dex.servicePortGrpc | int | `5557` | Service port for gRPC access |
| dex.servicePortGrpcName | string | `"grpc"` | Service port name for gRPC access |
| dex.servicePortHttp | int | `5556` | Service port for HTTP access |
| dex.servicePortHttpName | string | `"http"` | Service port name for HTTP access |
| dex.servicePortMetrics | int | `5558` | Service port for metrics access |
| dex.terminationGracePeriodSeconds | int | `30` | terminationGracePeriodSeconds for container lifecycle hook |
| dex.tolerations | list | `[]` (defaults to global.tolerations) | [Tolerations] for use with node taints |
| dex.topologySpreadConstraints | list | `[]` (defaults to global.topologySpreadConstraints) | Assign custom [TopologySpreadConstraints] rules to dex # Ref: https://kubernetes.io/docs/concepts/workloads/pods/pod-topology-spread-constraints/ # If labelSelector is left out, it will default to the labelSelector configuration of the deployment |
| dex.volumeMounts | list | `[]` | Additional volumeMounts to the dex main container |
| dex.volumes | list | `[]` | Additional volumes to the dex pod |
| externalRedis.existingSecret | string | `""` | The name of an existing secret with Redis (must contain key `redis-password`) and Sentinel credentials. When it's set, the `externalRedis.password` parameter is ignored |
| externalRedis.host | string | `""` | External Redis server host |
| externalRedis.password | string | `""` | External Redis password |
| externalRedis.port | int | `6379` | External Redis server port |
| externalRedis.secretAnnotations | object | `{}` | External Redis Secret annotations |
| externalRedis.username | string | `""` | External Redis username |
| extraObjects | list | `[]` | Array of extra K8s manifests to deploy # Note: Supports use of custom Helm templates |
| fullnameOverride | string | `""` | String to fully override `"argo-cd.fullname"` |
| global.addPrometheusAnnotations | bool | `false` | Add Prometheus scrape annotations to all metrics services. This can be used as an alternative to the ServiceMonitors. |
| global.additionalLabels | object | `{}` | Common labels for the all resources |
| global.affinity.nodeAffinity.matchExpressions | list | `[]` | Default match expressions for node affinity |
| global.affinity.nodeAffinity.type | string | `"hard"` | Default node affinity rules. Either: `none`, `soft` or `hard` |
| global.affinity.podAntiAffinity | string | `"soft"` | Default pod anti-affinity rules. Either: `none`, `soft` or `hard` |
| global.certificateAnnotations | object | `{}` | Annotations for the all deployed Certificates |
| global.deploymentAnnotations | object | `{}` | Annotations for the all deployed Deployments |
| global.deploymentStrategy | object | `{}` | Deployment strategy for the all deployed Deployments |
| global.domain | string | `"argocd.example.com"` | Default domain used by all components # Used for ingresses, certificates, SSO, notifications, etc. |
| global.dualStack.ipFamilies | list | `[]` | IP families that should be supported and the order in which they should be applied to ClusterIP as well. Can be IPv4 and/or IPv6. |
| global.dualStack.ipFamilyPolicy | string | `""` | IP family policy to configure dual-stack see [Configure dual-stack](https://kubernetes.io/docs/concepts/services-networking/dual-stack/#services) |
| global.env | list | `[]` | Environment variables to pass to all deployed Deployments |
| global.hostAliases | list | `[]` | Mapping between IP and hostnames that will be injected as entries in the pod's hosts files |
| global.image.imagePullPolicy | string | `"IfNotPresent"` | If defined, a imagePullPolicy applied to all Argo CD deployments |
| global.image.repository | string | `"quay.io/argoproj/argocd"` | If defined, a repository applied to all Argo CD deployments |
| global.image.tag | string | `""` | Overrides the global Argo CD image tag whose default is the chart appVersion |
| global.imagePullSecrets | list | `[]` | Secrets with credentials to pull images from a private registry |
| global.logging.format | string | `"text"` | Set the global logging format. Either: `text` or `json` |
| global.logging.level | string | `"info"` | Set the global logging level. One of: `debug`, `info`, `warn` or `error` |
| global.networkPolicy.create | bool | `false` | Create NetworkPolicy objects for all components |
| global.networkPolicy.defaultDenyIngress | bool | `false` | Default deny all ingress traffic |
| global.nodeSelector | object | `{}` | Default node selector for all components |
| global.podAnnotations | object | `{}` | Annotations for the all deployed pods |
| global.podLabels | object | `{}` | Labels for the all deployed pods |
| global.priorityClassName | string | `""` | Default priority class for all components |
| global.revisionHistoryLimit | int | `3` | Number of old deployment ReplicaSets to retain. The rest will be garbage collected. |
| global.runtimeClassName | string | `""` | Runtime class name for all components |
| global.securityContext | object | `{}` (See [values.yaml]) | Toggle and define pod-level security context. |
| global.statefulsetAnnotations | object | `{}` | Annotations for the all deployed Statefulsets |
| global.tolerations | list | `[]` | Default tolerations for all components |
| global.topologySpreadConstraints | list | `[]` | Default [TopologySpreadConstraints] rules for all components # Ref: https://kubernetes.io/docs/concepts/workloads/pods/pod-topology-spread-constraints/ # If labelSelector is left out, it will default to the labelSelector of the component |
| kubeVersionOverride | string | `""` | Override the Kubernetes version, which is used to evaluate certain manifests |
| nameOverride | string | `"argocd"` | Provide a name in place of `argocd` |
| namespaceOverride | string | `.Release.Namespace` | Override the namespace |
| notifications.affinity | object | `{}` (defaults to global.affinity preset) | Assign custom [affinity] rules |
| notifications.argocdUrl | string | `""` (defaults to https://`global.domain`) | Argo CD dashboard url; used in place of {{.context.argocdUrl}} in templates |
| notifications.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account into the pod. |
| notifications.clusterRoleRules.rules | list | `[]` | List of custom rules for the notifications controller's ClusterRole resource |
| notifications.cm.create | bool | `true` | Whether helm chart creates notifications controller config map |
| notifications.containerPorts.metrics | int | `9001` | Metrics container port |
| notifications.containerSecurityContext | object | See [values.yaml] | Notification controller container-level security Context |
| notifications.context | object | `{}` | Define user-defined context # For more information: https://argo-cd.readthedocs.io/en/stable/operator-manual/notifications/templates/#defining-user-defined-context |
| notifications.deploymentAnnotations | object | `{}` | Annotations to be applied to the notifications controller Deployment |
| notifications.deploymentStrategy | object | `{"type":"Recreate"}` | Deployment strategy to be added to the notifications controller Deployment |
| notifications.dnsConfig | object | `{}` | [DNS configuration] |
| notifications.dnsPolicy | string | `"ClusterFirst"` | Alternative DNS policy for notifications controller Pods |
| notifications.enabled | bool | `true` | Enable notifications controller |
| notifications.extraArgs | list | `[]` | Extra arguments to provide to the notifications controller |
| notifications.extraContainers | list | `[]` | Additional containers to be added to the notifications controller pod # Note: Supports use of custom Helm templates |
| notifications.extraEnv | list | `[]` | Additional container environment variables |
| notifications.extraEnvFrom | list | `[]` (See [values.yaml]) | envFrom to pass to the notifications controller |
| notifications.extraVolumeMounts | list | `[]` | List of extra mounts to add (normally used with extraVolumes) |
| notifications.extraVolumes | list | `[]` | List of extra volumes to add |
| notifications.image.imagePullPolicy | string | `""` (defaults to global.image.imagePullPolicy) | Image pull policy for the notifications controller |
| notifications.image.repository | string | `""` (defaults to global.image.repository) | Repository to use for the notifications controller |
| notifications.image.tag | string | `""` (defaults to global.image.tag) | Tag to use for the notifications controller |
| notifications.imagePullSecrets | list | `[]` (defaults to global.imagePullSecrets) | Secrets with credentials to pull images from a private registry |
| notifications.initContainers | list | `[]` | Init containers to add to the notifications controller pod # Note: Supports use of custom Helm templates |
| notifications.livenessProbe.enabled | bool | `false` | Enable Kubernetes liveness probe for notifications controller Pods |
| notifications.livenessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| notifications.livenessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| notifications.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| notifications.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| notifications.livenessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| notifications.logFormat | string | `""` (defaults to global.logging.format) | Notifications controller log format. Either `text` or `json` |
| notifications.logLevel | string | `""` (defaults to global.logging.level) | Notifications controller log level. One of: `debug`, `info`, `warn`, `error` |
| notifications.metrics.enabled | bool | `false` | Enables prometheus metrics server |
| notifications.metrics.port | int | `9001` | Metrics port |
| notifications.metrics.service.annotations | object | `{}` | Metrics service annotations |
| notifications.metrics.service.clusterIP | string | `""` | Metrics service clusterIP. `None` makes a "headless service" (no virtual IP) |
| notifications.metrics.service.labels | object | `{}` | Metrics service labels |
| notifications.metrics.service.portName | string | `"http-metrics"` | Metrics service port name |
| notifications.metrics.service.type | string | `"ClusterIP"` | Metrics service type |
| notifications.metrics.serviceMonitor.additionalLabels | object | `{}` | Prometheus ServiceMonitor labels |
| notifications.metrics.serviceMonitor.annotations | object | `{}` | Prometheus ServiceMonitor annotations |
| notifications.metrics.serviceMonitor.enabled | bool | `false` | Enable a prometheus ServiceMonitor |
| notifications.metrics.serviceMonitor.metricRelabelings | list | `[]` | Prometheus [MetricRelabelConfigs] to apply to samples before ingestion |
| notifications.metrics.serviceMonitor.relabelings | list | `[]` | Prometheus [RelabelConfigs] to apply to samples before scraping |
| notifications.metrics.serviceMonitor.scheme | string | `""` | Prometheus ServiceMonitor scheme |
| notifications.metrics.serviceMonitor.selector | object | `{}` | Prometheus ServiceMonitor selector |
| notifications.metrics.serviceMonitor.tlsConfig | object | `{}` | Prometheus ServiceMonitor tlsConfig |
| notifications.name | string | `"notifications-controller"` | Notifications controller name string |
| notifications.nodeSelector | object | `{}` (defaults to global.nodeSelector) | [Node selector] |
| notifications.notifiers | object | See [values.yaml] | Configures notification services such as slack, email or custom webhook # For more information: https://argo-cd.readthedocs.io/en/stable/operator-manual/notifications/services/overview/ |
| notifications.pdb.annotations | object | `{}` | Annotations to be added to notifications controller pdb |
| notifications.pdb.enabled | bool | `false` | Deploy a [PodDisruptionBudget] for the notifications controller |
| notifications.pdb.labels | object | `{}` | Labels to be added to notifications controller pdb |
| notifications.pdb.maxUnavailable | string | `""` | Number of pods that are unavailable after eviction as number or percentage (eg.: 50%). # Has higher precedence over `notifications.pdb.minAvailable` |
| notifications.pdb.minAvailable | string | `""` (defaults to 0 if not specified) | Number of pods that are available after eviction as number or percentage (eg.: 50%) |
| notifications.podAnnotations | object | `{}` | Annotations to be applied to the notifications controller Pods |
| notifications.podLabels | object | `{}` | Labels to be applied to the notifications controller Pods |
| notifications.priorityClassName | string | `""` (defaults to global.priorityClassName) | Priority class for the notifications controller pods |
| notifications.readinessProbe.enabled | bool | `false` | Enable Kubernetes liveness probe for notifications controller Pods |
| notifications.readinessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| notifications.readinessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| notifications.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| notifications.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| notifications.readinessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| notifications.resources | object | `{}` | Resource limits and requests for the notifications controller |
| notifications.runtimeClassName | string | `""` (defaults to global.runtimeClassName) | Runtime class name for the notifications controller |
| notifications.secret.annotations | object | `{}` | key:value pairs of annotations to be added to the secret |
| notifications.secret.create | bool | `true` | Whether helm chart creates notifications controller secret # If true, will create a secret with the name below. Otherwise, will assume existence of a secret with that name. |
| notifications.secret.items | object | `{}` | Generic key:value pairs to be inserted into the secret # Can be used for templates, notification services etc. Some examples given below. # For more information: https://argo-cd.readthedocs.io/en/stable/operator-manual/notifications/services/overview/ |
| notifications.secret.labels | object | `{}` | key:value pairs of labels to be added to the secret |
| notifications.secret.name | string | `"argocd-notifications-secret"` | notifications controller Secret name |
| notifications.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| notifications.serviceAccount.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account |
| notifications.serviceAccount.create | bool | `true` | Create notifications controller service account |
| notifications.serviceAccount.labels | object | `{}` | Labels applied to created service account |
| notifications.serviceAccount.name | string | `"argocd-notifications-controller"` | Notification controller service account name |
| notifications.subscriptions | list | `[]` | Contains centrally managed global application subscriptions # For more information: https://argo-cd.readthedocs.io/en/stable/operator-manual/notifications/subscriptions/ |
| notifications.templates | object | `{}` | The notification template is used to generate the notification content # For more information: https://argo-cd.readthedocs.io/en/stable/operator-manual/notifications/templates/ |
| notifications.terminationGracePeriodSeconds | int | `30` | terminationGracePeriodSeconds for container lifecycle hook |
| notifications.tolerations | list | `[]` (defaults to global.tolerations) | [Tolerations] for use with node taints |
| notifications.topologySpreadConstraints | list | `[]` (defaults to global.topologySpreadConstraints) | Assign custom [TopologySpreadConstraints] rules to the application controller # Ref: https://kubernetes.io/docs/concepts/workloads/pods/pod-topology-spread-constraints/ # If labelSelector is left out, it will default to the labelSelector configuration of the deployment |
| notifications.triggers | object | `{}` | The trigger defines the condition when the notification should be sent # For more information: https://argo-cd.readthedocs.io/en/stable/operator-manual/notifications/triggers/ |
| openshift.enabled | bool | `false` | enables using arbitrary uid for argo repo server |
| redis-ha.additionalAffinities | object | `{}` | Additional affinities to add to the Redis server pods. |
| redis-ha.affinity | string | `""` | Assign custom [affinity] rules to the Redis pods. |
| redis-ha.auth | bool | `true` | Configures redis-ha with AUTH |
| redis-ha.containerSecurityContext | object | See [values.yaml] | Redis HA statefulset container-level security context |
| redis-ha.enabled | bool | `false` | Enables the Redis HA subchart and disables the custom Redis single node deployment |
| redis-ha.existingSecret | string | `"argocd-redis"` | Existing Secret to use for redis-ha authentication. By default the redis-secret-init Job is generating this Secret. |
| redis-ha.exporter.enabled | bool | `false` | Enable Prometheus redis-exporter sidecar |
| redis-ha.exporter.image | string | `"public.ecr.aws/bitnami/redis-exporter"` | Repository to use for the redis-exporter |
| redis-ha.exporter.tag | string | `"1.58.0"` | Tag to use for the redis-exporter |
| redis-ha.haproxy.additionalAffinities | object | `{}` | Additional affinities to add to the haproxy pods. |
| redis-ha.haproxy.affinity | string | `""` | Assign custom [affinity] rules to the haproxy pods. |
| redis-ha.haproxy.containerSecurityContext | object | See [values.yaml] | HAProxy container-level security context |
| redis-ha.haproxy.enabled | bool | `true` | Enabled HAProxy LoadBalancing/Proxy |
| redis-ha.haproxy.hardAntiAffinity | bool | `true` | Whether the haproxy pods should be forced to run on separate nodes. |
| redis-ha.haproxy.labels | object | `{"app.kubernetes.io/name":"argocd-redis-ha-haproxy"}` | Custom labels for the haproxy pod. This is relevant for Argo CD CLI. |
| redis-ha.haproxy.metrics.enabled | bool | `true` | HAProxy enable prometheus metric scraping |
| redis-ha.haproxy.tolerations | list | `[]` | [Tolerations] for use with node taints for haproxy pods. |
| redis-ha.hardAntiAffinity | bool | `true` | Whether the Redis server pods should be forced to run on separate nodes. |
| redis-ha.image.repository | string | `"public.ecr.aws/docker/library/redis"` | Redis repository |
| redis-ha.image.tag | string | `"7.2.4-alpine"` | Redis tag |
| redis-ha.persistentVolume.enabled | bool | `false` | Configures persistence on Redis nodes |
| redis-ha.redis.config | object | See [values.yaml] | Any valid redis config options in this section will be applied to each server (see `redis-ha` chart) |
| redis-ha.redis.config.save | string | `'""'` | Will save the DB if both the given number of seconds and the given number of write operations against the DB occurred. `""`  is disabled |
| redis-ha.redis.masterGroupName | string | `"argocd"` | Redis convention for naming the cluster group: must match `^[\\w-\\.]+$` and can be templated |
| redis-ha.tolerations | list | `[]` | [Tolerations] for use with node taints for Redis pods. |
| redis-ha.topologySpreadConstraints | object | `{"enabled":false,"maxSkew":"","topologyKey":"","whenUnsatisfiable":""}` | Assign custom [TopologySpreadConstraints] rules to the Redis pods. # https://kubernetes.io/docs/concepts/workloads/pods/pod-topology-spread-constraints/ |
| redis-ha.topologySpreadConstraints.enabled | bool | `false` | Enable Redis HA topology spread constraints |
| redis-ha.topologySpreadConstraints.maxSkew | string | `""` (defaults to `1`) | Max skew of pods tolerated |
| redis-ha.topologySpreadConstraints.topologyKey | string | `""` (defaults to `topology.kubernetes.io/zone`) | Topology key for spread |
| redis-ha.topologySpreadConstraints.whenUnsatisfiable | string | `""` (defaults to `ScheduleAnyway`) | Enforcement policy, hard or soft |
| redis.affinity | object | `{}` (defaults to global.affinity preset) | Assign custom [affinity] rules to the deployment |
| redis.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account into the pod. |
| redis.containerPorts.metrics | int | `9121` | Metrics container port |
| redis.containerPorts.redis | int | `6379` | Redis container port |
| redis.containerSecurityContext | object | See [values.yaml] | Redis container-level security context |
| redis.deploymentAnnotations | object | `{}` | Annotations to be added to the Redis server Deployment |
| redis.dnsConfig | object | `{}` | [DNS configuration] |
| redis.dnsPolicy | string | `"ClusterFirst"` | Alternative DNS policy for Redis server pods |
| redis.enabled | bool | `true` | Enable redis |
| redis.env | list | `[]` | Environment variables to pass to the Redis server |
| redis.envFrom | list | `[]` (See [values.yaml]) | envFrom to pass to the Redis server |
| redis.exporter.containerSecurityContext | object | See [values.yaml] | Redis exporter security context |
| redis.exporter.enabled | bool | `false` | Enable Prometheus redis-exporter sidecar |
| redis.exporter.env | list | `[]` | Environment variables to pass to the Redis exporter |
| redis.exporter.image.imagePullPolicy | string | `""` (defaults to global.image.imagePullPolicy) | Image pull policy for the redis-exporter |
| redis.exporter.image.repository | string | `"public.ecr.aws/bitnami/redis-exporter"` | Repository to use for the redis-exporter |
| redis.exporter.image.tag | string | `"1.58.0"` | Tag to use for the redis-exporter |
| redis.exporter.livenessProbe.enabled | bool | `false` | Enable Kubernetes liveness probe for Redis exporter |
| redis.exporter.livenessProbe.failureThreshold | int | `5` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| redis.exporter.livenessProbe.initialDelaySeconds | int | `30` | Number of seconds after the container has started before [probe] is initiated |
| redis.exporter.livenessProbe.periodSeconds | int | `15` | How often (in seconds) to perform the [probe] |
| redis.exporter.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| redis.exporter.livenessProbe.timeoutSeconds | int | `15` | Number of seconds after which the [probe] times out |
| redis.exporter.readinessProbe.enabled | bool | `false` | Enable Kubernetes liveness probe for Redis exporter (optional) |
| redis.exporter.readinessProbe.failureThreshold | int | `5` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| redis.exporter.readinessProbe.initialDelaySeconds | int | `30` | Number of seconds after the container has started before [probe] is initiated |
| redis.exporter.readinessProbe.periodSeconds | int | `15` | How often (in seconds) to perform the [probe] |
| redis.exporter.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| redis.exporter.readinessProbe.timeoutSeconds | int | `15` | Number of seconds after which the [probe] times out |
| redis.exporter.resources | object | `{}` | Resource limits and requests for redis-exporter sidecar |
| redis.extraArgs | list | `[]` | Additional command line arguments to pass to redis-server |
| redis.extraContainers | list | `[]` | Additional containers to be added to the redis pod # Note: Supports use of custom Helm templates |
| redis.image.imagePullPolicy | string | `""` (defaults to global.image.imagePullPolicy) | Redis image pull policy |
| redis.image.repository | string | `"public.ecr.aws/docker/library/redis"` | Redis repository |
| redis.image.tag | string | `"7.2.4-alpine"` | Redis tag |
| redis.imagePullSecrets | list | `[]` (defaults to global.imagePullSecrets) | Secrets with credentials to pull images from a private registry |
| redis.initContainers | list | `[]` | Init containers to add to the redis pod # Note: Supports use of custom Helm templates |
| redis.livenessProbe.enabled | bool | `false` | Enable Kubernetes liveness probe for Redis server |
| redis.livenessProbe.failureThreshold | int | `5` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| redis.livenessProbe.initialDelaySeconds | int | `30` | Number of seconds after the container has started before [probe] is initiated |
| redis.livenessProbe.periodSeconds | int | `15` | How often (in seconds) to perform the [probe] |
| redis.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| redis.livenessProbe.timeoutSeconds | int | `15` | Number of seconds after which the [probe] times out |
| redis.metrics.enabled | bool | `false` | Deploy metrics service |
| redis.metrics.service.annotations | object | `{}` | Metrics service annotations |
| redis.metrics.service.clusterIP | string | `"None"` | Metrics service clusterIP. `None` makes a "headless service" (no virtual IP) |
| redis.metrics.service.labels | object | `{}` | Metrics service labels |
| redis.metrics.service.portName | string | `"http-metrics"` | Metrics service port name |
| redis.metrics.service.servicePort | int | `9121` | Metrics service port |
| redis.metrics.service.type | string | `"ClusterIP"` | Metrics service type |
| redis.metrics.serviceMonitor.additionalLabels | object | `{}` | Prometheus ServiceMonitor labels |
| redis.metrics.serviceMonitor.annotations | object | `{}` | Prometheus ServiceMonitor annotations |
| redis.metrics.serviceMonitor.enabled | bool | `false` | Enable a prometheus ServiceMonitor |
| redis.metrics.serviceMonitor.interval | string | `"30s"` | Interval at which metrics should be scraped |
| redis.metrics.serviceMonitor.metricRelabelings | list | `[]` | Prometheus [MetricRelabelConfigs] to apply to samples before ingestion |
| redis.metrics.serviceMonitor.namespace | string | `""` | Prometheus ServiceMonitor namespace |
| redis.metrics.serviceMonitor.relabelings | list | `[]` | Prometheus [RelabelConfigs] to apply to samples before scraping |
| redis.metrics.serviceMonitor.scheme | string | `""` | Prometheus ServiceMonitor scheme |
| redis.metrics.serviceMonitor.selector | object | `{}` | Prometheus ServiceMonitor selector |
| redis.metrics.serviceMonitor.tlsConfig | object | `{}` | Prometheus ServiceMonitor tlsConfig |
| redis.name | string | `"redis"` | Redis name |
| redis.nodeSelector | object | `{}` (defaults to global.nodeSelector) | [Node selector] |
| redis.pdb.annotations | object | `{}` | Annotations to be added to Redis pdb |
| redis.pdb.enabled | bool | `false` | Deploy a [PodDisruptionBudget] for the Redis |
| redis.pdb.labels | object | `{}` | Labels to be added to Redis pdb |
| redis.pdb.maxUnavailable | string | `""` | Number of pods that are unavailble after eviction as number or percentage (eg.: 50%). # Has higher precedence over `redis.pdb.minAvailable` |
| redis.pdb.minAvailable | string | `""` (defaults to 0 if not specified) | Number of pods that are available after eviction as number or percentage (eg.: 50%) |
| redis.podAnnotations | object | `{}` | Annotations to be added to the Redis server pods |
| redis.podLabels | object | `{}` | Labels to be added to the Redis server pods |
| redis.priorityClassName | string | `""` (defaults to global.priorityClassName) | Priority class for redis pods |
| redis.readinessProbe.enabled | bool | `false` | Enable Kubernetes liveness probe for Redis server |
| redis.readinessProbe.failureThreshold | int | `5` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| redis.readinessProbe.initialDelaySeconds | int | `30` | Number of seconds after the container has started before [probe] is initiated |
| redis.readinessProbe.periodSeconds | int | `15` | How often (in seconds) to perform the [probe] |
| redis.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| redis.readinessProbe.timeoutSeconds | int | `15` | Number of seconds after which the [probe] times out |
| redis.resources | object | `{}` | Resource limits and requests for redis |
| redis.runtimeClassName | string | `""` (defaults to global.runtimeClassName) | Runtime class name for redis |
| redis.securityContext | object | See [values.yaml] | Redis pod-level security context |
| redis.service.annotations | object | `{}` | Redis service annotations |
| redis.service.labels | object | `{}` | Additional redis service labels |
| redis.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| redis.serviceAccount.automountServiceAccountToken | bool | `false` | Automount API credentials for the Service Account |
| redis.serviceAccount.create | bool | `false` | Create a service account for the redis pod |
| redis.serviceAccount.name | string | `""` | Service account name for redis pod |
| redis.servicePort | int | `6379` | Redis service port |
| redis.terminationGracePeriodSeconds | int | `30` | terminationGracePeriodSeconds for container lifecycle hook |
| redis.tolerations | list | `[]` (defaults to global.tolerations) | [Tolerations] for use with node taints |
| redis.topologySpreadConstraints | list | `[]` (defaults to global.topologySpreadConstraints) | Assign custom [TopologySpreadConstraints] rules to redis # Ref: https://kubernetes.io/docs/concepts/workloads/pods/pod-topology-spread-constraints/ # If labelSelector is left out, it will default to the labelSelector configuration of the deployment |
| redis.volumeMounts | list | `[]` | Additional volumeMounts to the redis container |
| redis.volumes | list | `[]` | Additional volumes to the redis pod |
| redisSecretInit.affinity | object | `{}` | Assign custom [affinity] rules to the Redis secret-init Job |
| redisSecretInit.containerSecurityContext | object | See [values.yaml] | Application controller container-level security context |
| redisSecretInit.enabled | bool | `true` | Enable Redis secret initialization. If disabled, secret must be provisioned by alternative methods |
| redisSecretInit.image.imagePullPolicy | string | `""` (defaults to global.image.imagePullPolicy) | Image pull policy for the Redis secret-init Job |
| redisSecretInit.image.repository | string | `""` (defaults to global.image.repository) | Repository to use for the Redis secret-init Job |
| redisSecretInit.image.tag | string | `""` (defaults to global.image.tag) | Tag to use for the Redis secret-init Job |
| redisSecretInit.imagePullSecrets | list | `[]` (defaults to global.imagePullSecrets) | Secrets with credentials to pull images from a private registry |
| redisSecretInit.jobAnnotations | object | `{}` | Annotations to be added to the Redis secret-init Job |
| redisSecretInit.name | string | `"redis-secret-init"` | Redis secret-init name |
| redisSecretInit.nodeSelector | object | `{}` (defaults to global.nodeSelector) | Node selector to be added to the Redis secret-init Job |
| redisSecretInit.podAnnotations | object | `{}` | Annotations to be added to the Redis secret-init Job |
| redisSecretInit.podLabels | object | `{}` | Labels to be added to the Redis secret-init Job |
| redisSecretInit.priorityClassName | string | `""` (defaults to global.priorityClassName) | Priority class for Redis secret-init Job |
| redisSecretInit.resources | object | `{}` | Resource limits and requests for Redis secret-init Job |
| redisSecretInit.securityContext | object | `{}` | Redis secret-init Job pod-level security context |
| redisSecretInit.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| redisSecretInit.serviceAccount.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account |
| redisSecretInit.serviceAccount.create | bool | `true` | Create a service account for the redis pod |
| redisSecretInit.serviceAccount.name | string | `""` | Service account name for redis pod |
| redisSecretInit.tolerations | list | `[]` (defaults to global.tolerations) | Tolerations to be added to the Redis secret-init Job |
| repoServer.affinity | object | `{}` (defaults to global.affinity preset) | Assign custom [affinity] rules to the deployment |
| repoServer.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account into the pod. |
| repoServer.autoscaling.behavior | object | `{}` | Configures the scaling behavior of the target in both Up and Down directions. |
| repoServer.autoscaling.enabled | bool | `false` | Enable Horizontal Pod Autoscaler ([HPA]) for the repo server |
| repoServer.autoscaling.maxReplicas | int | `5` | Maximum number of replicas for the repo server [HPA] |
| repoServer.autoscaling.metrics | list | `[]` | Configures custom HPA metrics for the Argo CD repo server Ref: https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/ |
| repoServer.autoscaling.minReplicas | int | `1` | Minimum number of replicas for the repo server [HPA] |
| repoServer.autoscaling.targetCPUUtilizationPercentage | int | `50` | Average CPU utilization percentage for the repo server [HPA] |
| repoServer.autoscaling.targetMemoryUtilizationPercentage | int | `50` | Average memory utilization percentage for the repo server [HPA] |
| repoServer.certificateSecret.annotations | object | `{}` | Annotations to be added to argocd-repo-server-tls secret |
| repoServer.certificateSecret.ca | string | `""` | Certificate authority. Required for self-signed certificates. |
| repoServer.certificateSecret.crt | string | `""` | Certificate data. Must contain SANs of Repo service (ie: argocd-repo-server, argocd-repo-server.argo-cd.svc) |
| repoServer.certificateSecret.enabled | bool | `false` | Create argocd-repo-server-tls secret |
| repoServer.certificateSecret.key | string | `""` | Certificate private key |
| repoServer.certificateSecret.labels | object | `{}` | Labels to be added to argocd-repo-server-tls secret |
| repoServer.clusterRoleRules.enabled | bool | `false` | Enable custom rules for the Repo server's Cluster Role resource |
| repoServer.clusterRoleRules.rules | list | `[]` | List of custom rules for the Repo server's Cluster Role resource |
| repoServer.containerPorts.metrics | int | `8084` | Metrics container port |
| repoServer.containerPorts.server | int | `8081` | Repo server container port |
| repoServer.containerSecurityContext | object | See [values.yaml] | Repo server container-level security context |
| repoServer.deploymentAnnotations | object | `{}` | Annotations to be added to repo server Deployment |
| repoServer.deploymentStrategy | object | `{}` | Deployment strategy to be added to the repo server Deployment |
| repoServer.dnsConfig | object | `{}` | [DNS configuration] |
| repoServer.dnsPolicy | string | `"ClusterFirst"` | Alternative DNS policy for Repo server pods |
| repoServer.emptyDir.sizeLimit | string | `""` (defaults not set if not specified i.e. no size limit) | EmptyDir size limit for repo server |
| repoServer.env | list | `[]` | Environment variables to pass to repo server |
| repoServer.envFrom | list | `[]` (See [values.yaml]) | envFrom to pass to repo server |
| repoServer.existingVolumes | object | `{}` | Volumes to be used in replacement of emptydir on default volumes |
| repoServer.extraArgs | list | `[]` | Additional command line arguments to pass to repo server |
| repoServer.extraContainers | list | `[]` | Additional containers to be added to the repo server pod # Ref: https://argo-cd.readthedocs.io/en/stable/user-guide/config-management-plugins/ # Note: Supports use of custom Helm templates |
| repoServer.hostNetwork | bool | `false` | Host Network for Repo server pods |
| repoServer.image.imagePullPolicy | string | `""` (defaults to global.image.imagePullPolicy) | Image pull policy for the repo server |
| repoServer.image.repository | string | `""` (defaults to global.image.repository) | Repository to use for the repo server |
| repoServer.image.tag | string | `""` (defaults to global.image.tag) | Tag to use for the repo server |
| repoServer.imagePullSecrets | list | `[]` (defaults to global.imagePullSecrets) | Secrets with credentials to pull images from a private registry |
| repoServer.initContainers | list | `[]` | Init containers to add to the repo server pods |
| repoServer.lifecycle | object | `{}` | Specify postStart and preStop lifecycle hooks for your argo-repo-server container |
| repoServer.livenessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| repoServer.livenessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| repoServer.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| repoServer.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| repoServer.livenessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| repoServer.metrics.enabled | bool | `false` | Deploy metrics service |
| repoServer.metrics.service.annotations | object | `{}` | Metrics service annotations |
| repoServer.metrics.service.clusterIP | string | `""` | Metrics service clusterIP. `None` makes a "headless service" (no virtual IP) |
| repoServer.metrics.service.labels | object | `{}` | Metrics service labels |
| repoServer.metrics.service.portName | string | `"http-metrics"` | Metrics service port name |
| repoServer.metrics.service.servicePort | int | `8084` | Metrics service port |
| repoServer.metrics.service.type | string | `"ClusterIP"` | Metrics service type |
| repoServer.metrics.serviceMonitor.additionalLabels | object | `{}` | Prometheus ServiceMonitor labels |
| repoServer.metrics.serviceMonitor.annotations | object | `{}` | Prometheus ServiceMonitor annotations |
| repoServer.metrics.serviceMonitor.enabled | bool | `false` | Enable a prometheus ServiceMonitor |
| repoServer.metrics.serviceMonitor.interval | string | `"30s"` | Prometheus ServiceMonitor interval |
| repoServer.metrics.serviceMonitor.metricRelabelings | list | `[]` | Prometheus [MetricRelabelConfigs] to apply to samples before ingestion |
| repoServer.metrics.serviceMonitor.namespace | string | `""` | Prometheus ServiceMonitor namespace |
| repoServer.metrics.serviceMonitor.relabelings | list | `[]` | Prometheus [RelabelConfigs] to apply to samples before scraping |
| repoServer.metrics.serviceMonitor.scheme | string | `""` | Prometheus ServiceMonitor scheme |
| repoServer.metrics.serviceMonitor.scrapeTimeout | string | `""` | Prometheus ServiceMonitor scrapeTimeout. If empty, Prometheus uses the global scrape timeout unless it is less than the target's scrape interval value in which the latter is used. |
| repoServer.metrics.serviceMonitor.selector | object | `{}` | Prometheus ServiceMonitor selector |
| repoServer.metrics.serviceMonitor.tlsConfig | object | `{}` | Prometheus ServiceMonitor tlsConfig |
| repoServer.name | string | `"repo-server"` | Repo server name |
| repoServer.nodeSelector | object | `{}` (defaults to global.nodeSelector) | [Node selector] |
| repoServer.pdb.annotations | object | `{}` | Annotations to be added to repo server pdb |
| repoServer.pdb.enabled | bool | `false` | Deploy a [PodDisruptionBudget] for the repo server |
| repoServer.pdb.labels | object | `{}` | Labels to be added to repo server pdb |
| repoServer.pdb.maxUnavailable | string | `""` | Number of pods that are unavailable after eviction as number or percentage (eg.: 50%). # Has higher precedence over `repoServer.pdb.minAvailable` |
| repoServer.pdb.minAvailable | string | `""` (defaults to 0 if not specified) | Number of pods that are available after eviction as number or percentage (eg.: 50%) |
| repoServer.podAnnotations | object | `{}` | Annotations to be added to repo server pods |
| repoServer.podLabels | object | `{}` | Labels to be added to repo server pods |
| repoServer.priorityClassName | string | `""` (defaults to global.priorityClassName) | Priority class for the repo server pods |
| repoServer.rbac | list | `[]` | Repo server rbac rules |
| repoServer.readinessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| repoServer.readinessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| repoServer.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| repoServer.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| repoServer.readinessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| repoServer.replicas | int | `1` | The number of repo server pods to run |
| repoServer.resources | object | `{}` | Resource limits and requests for the repo server pods |
| repoServer.runtimeClassName | string | `""` (defaults to global.runtimeClassName) | Runtime class name for the repo server |
| repoServer.service.annotations | object | `{}` | Repo server service annotations |
| repoServer.service.labels | object | `{}` | Repo server service labels |
| repoServer.service.port | int | `8081` | Repo server service port |
| repoServer.service.portName | string | `"tcp-repo-server"` | Repo server service port name |
| repoServer.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| repoServer.serviceAccount.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account |
| repoServer.serviceAccount.create | bool | `true` | Create repo server service account |
| repoServer.serviceAccount.labels | object | `{}` | Labels applied to created service account |
| repoServer.serviceAccount.name | string | `""` | Repo server service account name |
| repoServer.terminationGracePeriodSeconds | int | `30` | terminationGracePeriodSeconds for container lifecycle hook |
| repoServer.tolerations | list | `[]` (defaults to global.tolerations) | [Tolerations] for use with node taints |
| repoServer.topologySpreadConstraints | list | `[]` (defaults to global.topologySpreadConstraints) | Assign custom [TopologySpreadConstraints] rules to the repo server # Ref: https://kubernetes.io/docs/concepts/workloads/pods/pod-topology-spread-constraints/ # If labelSelector is left out, it will default to the labelSelector configuration of the deployment |
| repoServer.useEphemeralHelmWorkingDir | bool | `true` | Toggle the usage of a ephemeral Helm working directory |
| repoServer.volumeMounts | list | `[]` | Additional volumeMounts to the repo server main container |
| repoServer.volumes | list | `[]` | Additional volumes to the repo server pod |
| server.affinity | object | `{}` (defaults to global.affinity preset) | Assign custom [affinity] rules to the deployment |
| server.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account into the pod. |
| server.autoscaling.behavior | object | `{}` | Configures the scaling behavior of the target in both Up and Down directions. |
| server.autoscaling.enabled | bool | `false` | Enable Horizontal Pod Autoscaler ([HPA]) for the Argo CD server |
| server.autoscaling.maxReplicas | int | `5` | Maximum number of replicas for the Argo CD server [HPA] |
| server.autoscaling.metrics | list | `[]` | Configures custom HPA metrics for the Argo CD server Ref: https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/ |
| server.autoscaling.minReplicas | int | `1` | Minimum number of replicas for the Argo CD server [HPA] |
| server.autoscaling.targetCPUUtilizationPercentage | int | `50` | Average CPU utilization percentage for the Argo CD server [HPA] |
| server.autoscaling.targetMemoryUtilizationPercentage | int | `50` | Average memory utilization percentage for the Argo CD server [HPA] |
| server.certificate.additionalHosts | list | `[]` | Certificate Subject Alternate Names (SANs) |
| server.certificate.annotations | object | `{}` | Annotations to be applied to the Server Certificate |
| server.certificate.domain | string | `""` (defaults to global.domain) | Certificate primary domain (commonName) |
| server.certificate.duration | string | `""` (defaults to 2160h = 90d if not specified) | The requested 'duration' (i.e. lifetime) of the certificate. # Ref: https://cert-manager.io/docs/usage/certificate/#renewal |
| server.certificate.enabled | bool | `false` | Deploy a Certificate resource (requires cert-manager) |
| server.certificate.issuer.group | string | `""` | Certificate issuer group. Set if using an external issuer. Eg. `cert-manager.io` |
| server.certificate.issuer.kind | string | `""` | Certificate issuer kind. Either `Issuer` or `ClusterIssuer` |
| server.certificate.issuer.name | string | `""` | Certificate issuer name. Eg. `letsencrypt` |
| server.certificate.privateKey.algorithm | string | `"RSA"` | Algorithm used to generate certificate private key. One of: `RSA`, `Ed25519` or `ECDSA` |
| server.certificate.privateKey.encoding | string | `"PKCS1"` | The private key cryptography standards (PKCS) encoding for private key. Either: `PCKS1` or `PKCS8` |
| server.certificate.privateKey.rotationPolicy | string | `"Never"` | Rotation policy of private key when certificate is re-issued. Either: `Never` or `Always` |
| server.certificate.privateKey.size | int | `2048` | Key bit size of the private key. If algorithm is set to `Ed25519`, size is ignored. |
| server.certificate.renewBefore | string | `""` (defaults to 360h = 15d if not specified) | How long before the expiry a certificate should be renewed. # Ref: https://cert-manager.io/docs/usage/certificate/#renewal |
| server.certificate.secretTemplateAnnotations | object | `{}` | Annotations that allow the certificate to be composed from data residing in existing Kubernetes Resources |
| server.certificate.usages | list | `[]` | Usages for the certificate ## Ref: https://cert-manager.io/docs/reference/api-docs/#cert-manager.io/v1.KeyUsage |
| server.certificateSecret.annotations | object | `{}` | Annotations to be added to argocd-server-tls secret |
| server.certificateSecret.crt | string | `""` | Certificate data |
| server.certificateSecret.enabled | bool | `false` | Create argocd-server-tls secret |
| server.certificateSecret.key | string | `""` | Private Key of the certificate |
| server.certificateSecret.labels | object | `{}` | Labels to be added to argocd-server-tls secret |
| server.clusterRoleRules.enabled | bool | `false` | Enable custom rules for the server's ClusterRole resource |
| server.clusterRoleRules.rules | list | `[]` | List of custom rules for the server's ClusterRole resource |
| server.containerPorts.metrics | int | `8083` | Metrics container port |
| server.containerPorts.server | int | `8080` | Server container port |
| server.containerSecurityContext | object | See [values.yaml] | Server container-level security context |
| server.deploymentAnnotations | object | `{}` | Annotations to be added to server Deployment |
| server.deploymentStrategy | object | `{}` | Deployment strategy to be added to the server Deployment |
| server.dnsConfig | object | `{}` | [DNS configuration] |
| server.dnsPolicy | string | `"ClusterFirst"` | Alternative DNS policy for Server pods |
| server.emptyDir.sizeLimit | string | `""` (defaults not set if not specified i.e. no size limit) | EmptyDir size limit for the Argo CD server |
| server.env | list | `[]` | Environment variables to pass to Argo CD server |
| server.envFrom | list | `[]` (See [values.yaml]) | envFrom to pass to Argo CD server |
| server.extensions.containerSecurityContext | object | See [values.yaml] | Server UI extensions container-level security context |
| server.extensions.enabled | bool | `false` | Enable support for Argo CD extensions |
| server.extensions.extensionList | list | `[]` (See [values.yaml]) | Extensions for Argo CD # Ref: https://github.com/argoproj-labs/argocd-extension-metrics#install-ui-extension |
| server.extensions.image.imagePullPolicy | string | `""` (defaults to global.image.imagePullPolicy) | Image pull policy for extensions |
| server.extensions.image.repository | string | `"quay.io/argoprojlabs/argocd-extension-installer"` | Repository to use for extension installer image |
| server.extensions.image.tag | string | `"v0.0.5"` | Tag to use for extension installer image |
| server.extensions.resources | object | `{}` | Resource limits and requests for the argocd-extensions container |
| server.extraArgs | list | `[]` | Additional command line arguments to pass to Argo CD server |
| server.extraContainers | list | `[]` | Additional containers to be added to the server pod # Note: Supports use of custom Helm templates |
| server.hostNetwork | bool | `false` | Host Network for Server pods |
| server.image.imagePullPolicy | string | `""` (defaults to global.image.imagePullPolicy) | Image pull policy for the Argo CD server |
| server.image.repository | string | `""` (defaults to global.image.repository) | Repository to use for the Argo CD server |
| server.image.tag | string | `""` (defaults to global.image.tag) | Tag to use for the Argo CD server |
| server.imagePullSecrets | list | `[]` (defaults to global.imagePullSecrets) | Secrets with credentials to pull images from a private registry |
| server.ingress.annotations | object | `{}` | Additional ingress annotations # Ref: https://argo-cd.readthedocs.io/en/stable/operator-manual/ingress/#option-1-ssl-passthrough |
| server.ingress.aws.backendProtocolVersion | string | `"GRPC"` | Backend protocol version for the AWS ALB gRPC service # This tells AWS to send traffic from the ALB using gRPC. # For more information: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-health-checks.html#health-check-settings |
| server.ingress.aws.serviceType | string | `"NodePort"` | Service type for the AWS ALB gRPC service # Can be of type NodePort or ClusterIP depending on which mode you are running. # Instance mode needs type NodePort, IP mode needs type ClusterIP # Ref: https://kubernetes-sigs.github.io/aws-load-balancer-controller/v2.2/how-it-works/#ingress-traffic |
| server.ingress.controller | string | `"generic"` | Specific implementation for ingress controller. One of `generic`, `aws` or `gke` # Additional configuration might be required in related configuration sections |
| server.ingress.enabled | bool | `false` | Enable an ingress resource for the Argo CD server |
| server.ingress.extraHosts | list | `[]` (See [values.yaml]) | The list of additional hostnames to be covered by ingress record |
| server.ingress.extraPaths | list | `[]` (See [values.yaml]) | Additional ingress paths # Note: Supports use of custom Helm templates |
| server.ingress.extraRules | list | `[]` (See [values.yaml]) | Additional ingress rules # Note: Supports use of custom Helm templates |
| server.ingress.extraTls | list | `[]` (See [values.yaml]) | Additional TLS configuration |
| server.ingress.gke.backendConfig | object | `{}` (See [values.yaml]) | Google [BackendConfig] resource, for use with the GKE Ingress Controller # Ref: https://cloud.google.com/kubernetes-engine/docs/how-to/ingress-features#configuring_ingress_features_through_frontendconfig_parameters |
| server.ingress.gke.frontendConfig | object | `{}` (See [values.yaml]) | Google [FrontendConfig] resource, for use with the GKE Ingress Controller # Ref: https://cloud.google.com/kubernetes-engine/docs/how-to/ingress-features#configuring_ingress_features_through_frontendconfig_parameters |
| server.ingress.gke.managedCertificate.create | bool | `true` | Create ManagedCertificate resource and annotations for Google Load balancer # Ref: https://cloud.google.com/kubernetes-engine/docs/how-to/managed-certs |
| server.ingress.gke.managedCertificate.extraDomains | list | `[]` | Additional domains for ManagedCertificate resource |
| server.ingress.hostname | string | `""` (defaults to global.domain) | Argo CD server hostname |
| server.ingress.ingressClassName | string | `""` | Defines which ingress controller will implement the resource |
| server.ingress.labels | object | `{}` | Additional ingress labels |
| server.ingress.path | string | `"/"` | The path to Argo CD server |
| server.ingress.pathType | string | `"Prefix"` | Ingress path type. One of `Exact`, `Prefix` or `ImplementationSpecific` |
| server.ingress.tls | bool | `false` | Enable TLS configuration for the hostname defined at `server.ingress.hostname` # TLS certificate will be retrieved from a TLS secret `argocd-server-tls` # You can create this secret via `certificate` or `certificateSecret` option |
| server.ingressGrpc.annotations | object | `{}` | Additional ingress annotations for dedicated [gRPC-ingress] |
| server.ingressGrpc.enabled | bool | `false` | Enable an ingress resource for the Argo CD server for dedicated [gRPC-ingress] |
| server.ingressGrpc.extraHosts | list | `[]` (See [values.yaml]) | The list of additional hostnames to be covered by ingress record |
| server.ingressGrpc.extraPaths | list | `[]` (See [values.yaml]) | Additional ingress paths for dedicated [gRPC-ingress] # Note: Supports use of custom Helm templates |
| server.ingressGrpc.extraRules | list | `[]` (See [values.yaml]) | Additional ingress rules # Note: Supports use of custom Helm templates |
| server.ingressGrpc.extraTls | list | `[]` (See [values.yaml]) | Additional TLS configuration for dedicated [gRPC-ingress] |
| server.ingressGrpc.hostname | string | `""` (defaults to grpc.`server.ingress.hostname`) | Argo CD server hostname for dedicated [gRPC-ingress] |
| server.ingressGrpc.ingressClassName | string | `""` | Defines which ingress controller will implement the resource [gRPC-ingress] |
| server.ingressGrpc.labels | object | `{}` | Additional ingress labels for dedicated [gRPC-ingress] |
| server.ingressGrpc.path | string | `"/"` | Argo CD server ingress path for dedicated [gRPC-ingress] |
| server.ingressGrpc.pathType | string | `"Prefix"` | Ingress path type for dedicated [gRPC-ingress]. One of `Exact`, `Prefix` or `ImplementationSpecific` |
| server.ingressGrpc.tls | bool | `false` | Enable TLS configuration for the hostname defined at `server.ingressGrpc.hostname` # TLS certificate will be retrieved from a TLS secret with name: `argocd-server-grpc-tls` |
| server.initContainers | list | `[]` | Init containers to add to the server pod # If your target Kubernetes cluster(s) require a custom credential (exec) plugin # you could use this (and the same in the application controller pod) to provide such executable # Ref: https://kubernetes.io/docs/reference/access-authn-authz/authentication/#client-go-credential-plugins |
| server.lifecycle | object | `{}` | Specify postStart and preStop lifecycle hooks for your argo-cd-server container |
| server.livenessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| server.livenessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| server.livenessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| server.livenessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| server.livenessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| server.metrics.enabled | bool | `false` | Deploy metrics service |
| server.metrics.service.annotations | object | `{}` | Metrics service annotations |
| server.metrics.service.clusterIP | string | `""` | Metrics service clusterIP. `None` makes a "headless service" (no virtual IP) |
| server.metrics.service.labels | object | `{}` | Metrics service labels |
| server.metrics.service.portName | string | `"http-metrics"` | Metrics service port name |
| server.metrics.service.servicePort | int | `8083` | Metrics service port |
| server.metrics.service.type | string | `"ClusterIP"` | Metrics service type |
| server.metrics.serviceMonitor.additionalLabels | object | `{}` | Prometheus ServiceMonitor labels |
| server.metrics.serviceMonitor.annotations | object | `{}` | Prometheus ServiceMonitor annotations |
| server.metrics.serviceMonitor.enabled | bool | `false` | Enable a prometheus ServiceMonitor |
| server.metrics.serviceMonitor.interval | string | `"30s"` | Prometheus ServiceMonitor interval |
| server.metrics.serviceMonitor.metricRelabelings | list | `[]` | Prometheus [MetricRelabelConfigs] to apply to samples before ingestion |
| server.metrics.serviceMonitor.namespace | string | `""` | Prometheus ServiceMonitor namespace |
| server.metrics.serviceMonitor.relabelings | list | `[]` | Prometheus [RelabelConfigs] to apply to samples before scraping |
| server.metrics.serviceMonitor.scheme | string | `""` | Prometheus ServiceMonitor scheme |
| server.metrics.serviceMonitor.scrapeTimeout | string | `""` | Prometheus ServiceMonitor scrapeTimeout. If empty, Prometheus uses the global scrape timeout unless it is less than the target's scrape interval value in which the latter is used. |
| server.metrics.serviceMonitor.selector | object | `{}` | Prometheus ServiceMonitor selector |
| server.metrics.serviceMonitor.tlsConfig | object | `{}` | Prometheus ServiceMonitor tlsConfig |
| server.name | string | `"server"` | Argo CD server name |
| server.nodeSelector | object | `{}` (defaults to global.nodeSelector) | [Node selector] |
| server.pdb.annotations | object | `{}` | Annotations to be added to Argo CD server pdb |
| server.pdb.enabled | bool | `false` | Deploy a [PodDisruptionBudget] for the Argo CD server |
| server.pdb.labels | object | `{}` | Labels to be added to Argo CD server pdb |
| server.pdb.maxUnavailable | string | `""` | Number of pods that are unavailable after eviction as number or percentage (eg.: 50%). # Has higher precedence over `server.pdb.minAvailable` |
| server.pdb.minAvailable | string | `""` (defaults to 0 if not specified) | Number of pods that are available after eviction as number or percentage (eg.: 50%) |
| server.podAnnotations | object | `{}` | Annotations to be added to server pods |
| server.podLabels | object | `{}` | Labels to be added to server pods |
| server.priorityClassName | string | `""` (defaults to global.priorityClassName) | Priority class for the Argo CD server pods |
| server.readinessProbe.failureThreshold | int | `3` | Minimum consecutive failures for the [probe] to be considered failed after having succeeded |
| server.readinessProbe.initialDelaySeconds | int | `10` | Number of seconds after the container has started before [probe] is initiated |
| server.readinessProbe.periodSeconds | int | `10` | How often (in seconds) to perform the [probe] |
| server.readinessProbe.successThreshold | int | `1` | Minimum consecutive successes for the [probe] to be considered successful after having failed |
| server.readinessProbe.timeoutSeconds | int | `1` | Number of seconds after which the [probe] times out |
| server.replicas | int | `1` | The number of server pods to run |
| server.resources | object | `{}` | Resource limits and requests for the Argo CD server |
| server.route.annotations | object | `{}` | Openshift Route annotations |
| server.route.enabled | bool | `false` | Enable an OpenShift Route for the Argo CD server |
| server.route.hostname | string | `""` | Hostname of OpenShift Route |
| server.route.termination_policy | string | `"None"` | Termination policy of Openshift Route |
| server.route.termination_type | string | `"passthrough"` | Termination type of Openshift Route |
| server.runtimeClassName | string | `""` (defaults to global.runtimeClassName) | Runtime class name for the Argo CD server |
| server.service.annotations | object | `{}` | Server service annotations |
| server.service.externalIPs | list | `[]` | Server service external IPs |
| server.service.externalTrafficPolicy | string | `"Cluster"` | Denotes if this Service desires to route external traffic to node-local or cluster-wide endpoints # Ref: https://kubernetes.io/docs/tasks/access-application-cluster/create-external-load-balancer/#preserving-the-client-source-ip |
| server.service.labels | object | `{}` | Server service labels |
| server.service.loadBalancerClass | string | `""` | The class of the load balancer implementation |
| server.service.loadBalancerIP | string | `""` | LoadBalancer will get created with the IP specified in this field |
| server.service.loadBalancerSourceRanges | list | `[]` | Source IP ranges to allow access to service from # Ref: https://kubernetes.io/docs/tasks/access-application-cluster/configure-cloud-provider-firewall/#restrict-access-for-loadbalancer-service |
| server.service.nodePortHttp | int | `30080` | Server service http port for NodePort service type (only if `server.service.type` is set to "NodePort") |
| server.service.nodePortHttps | int | `30443` | Server service https port for NodePort service type (only if `server.service.type` is set to "NodePort") |
| server.service.servicePortHttp | int | `80` | Server service http port |
| server.service.servicePortHttpName | string | `"http"` | Server service http port name, can be used to route traffic via istio |
| server.service.servicePortHttps | int | `443` | Server service https port |
| server.service.servicePortHttpsAppProtocol | string | `""` | Server service https port appProtocol # Ref: https://kubernetes.io/docs/concepts/services-networking/service/#application-protocol |
| server.service.servicePortHttpsName | string | `"https"` | Server service https port name, can be used to route traffic via istio |
| server.service.sessionAffinity | string | `"None"` | Used to maintain session affinity. Supports `ClientIP` and `None` # Ref: https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies |
| server.service.type | string | `"ClusterIP"` | Server service type |
| server.serviceAccount.annotations | object | `{}` | Annotations applied to created service account |
| server.serviceAccount.automountServiceAccountToken | bool | `true` | Automount API credentials for the Service Account |
| server.serviceAccount.create | bool | `true` | Create server service account |
| server.serviceAccount.labels | object | `{}` | Labels applied to created service account |
| server.serviceAccount.name | string | `"argocd-server"` | Server service account name |
| server.terminationGracePeriodSeconds | int | `30` | terminationGracePeriodSeconds for container lifecycle hook |
| server.tolerations | list | `[]` (defaults to global.tolerations) | [Tolerations] for use with node taints |
| server.topologySpreadConstraints | list | `[]` (defaults to global.topologySpreadConstraints) | Assign custom [TopologySpreadConstraints] rules to the Argo CD server # Ref: https://kubernetes.io/docs/concepts/workloads/pods/pod-topology-spread-constraints/ # If labelSelector is left out, it will default to the labelSelector configuration of the deployment |
| server.volumeMounts | list | `[]` | Additional volumeMounts to the server main container |
| server.volumes | list | `[]` | Additional volumes to the server pod |


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)


# argo-cd

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v2.13.0](https://img.shields.io/badge/AppVersion-v2.13.0-informational?style=flat-square)

Argo Helm chart configured by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://argoproj.github.io/argo-helm | argo(argo-cd) | 7.7.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| argo.global.domain | string | `nil` |  |


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
| cilium.autoDirectNodeRoutes | bool | `false` |  |
| cilium.bandwidthManager.enabled | bool | `true` |  |
| cilium.bpf.masquerade | bool | `true` |  |
| cilium.enableIPMasqAgent | bool | `false` |  |
| cilium.enableIPv4Masquerade | bool | `true` |  |
| cilium.encryption.enabled | bool | `true` |  |
| cilium.encryption.type | string | `"ipsec"` |  |
| cilium.envoy.enabled | bool | `false` |  |
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
| cilium.loadBalancer.mode | string | `"snat"` |  |
| cilium.nodeinit.enabled | bool | `true` |  |
| cilium.nodeinit.reconfigureKubelet | bool | `true` |  |
| cilium.nodeinit.removeCbrBridge | bool | `true` |  |
| cilium.sessionAffinity | bool | `true` |  |


![purple-divider](https://user-images.githubusercontent.com/7065401/52071927-c1cd7100-2562-11e9-908a-dde91ba14e59.png)


# ingress-nginx

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.11.3](https://img.shields.io/badge/AppVersion-1.11.3-informational?style=flat-square)

Nginx Helm chart

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://kubernetes.github.io/ingress-nginx | nginx(ingress-nginx) | 4.11.3 |


