# prometheus-grafana

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: v0.79.0](https://img.shields.io/badge/AppVersion-v0.79.0-informational?style=flat-square)

Kube prometheus stack Helm chart configurated by Ujstor

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://prometheus-community.github.io/helm-charts | prometheus-grafana(kube-prometheus-stack) | 67.2.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| prometheus-grafana.additionalRuleGroupAnnotations.disabled | object | `{}` |  |
| prometheus-grafana.coreDns.enabled | bool | `true` |  |
| prometheus-grafana.defaultRules.rules.windows | bool | `false` |  |
| prometheus-grafana.grafana.enabled | bool | `false` |  |
| prometheus-grafana.kubeApiServer.enabled | bool | `true` |  |
| prometheus-grafana.kubeApiServer.tlsConfig.insecureSkipVerify | bool | `false` |  |
| prometheus-grafana.kubeApiServer.tlsConfig.serverName | string | `"kubernetes"` |  |
| prometheus-grafana.kubeControllerManager.enabled | bool | `true` |  |
| prometheus-grafana.kubeDns.enabled | bool | `true` |  |
| prometheus-grafana.kubeEtcd.enabled | bool | `true` |  |
| prometheus-grafana.kubeProxy.enabled | bool | `true` |  |
| prometheus-grafana.kubeScheduler.enabled | bool | `true` |  |
| prometheus-grafana.kubeStateMetrics.enabled | bool | `true` |  |
| prometheus-grafana.kubelet.enabled | bool | `true` |  |
| prometheus-grafana.kubelet.namespace | string | `"kube-system"` |  |
| prometheus-grafana.kubernetesServiceMonitors.enabled | bool | `true` |  |
| prometheus-grafana.nodeExporter.enabled | bool | `true` |  |
| prometheus-grafana.nodeExporter.operatingSystems.aix.enabled | bool | `false` |  |
| prometheus-grafana.nodeExporter.operatingSystems.darwin.enabled | bool | `false` |  |
| prometheus-grafana.nodeExporter.operatingSystems.linux.enabled | bool | `true` |  |

