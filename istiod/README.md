# istiod

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.24.2](https://img.shields.io/badge/AppVersion-1.24.2-informational?style=flat-square)

Istio control plane Helm Chart

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://istio-release.storage.googleapis.com/charts | base | 1.24.2 |
| https://istio-release.storage.googleapis.com/charts | istiod | 1.24.2 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| base.base.enablecrdtemplates | bool | `true` |  |
| base.base.enableistioconfigcrds | bool | `true` |  |
| base.defaultrevision | string | `"default"` |  |
| base.experimental.stablevalidationpolicy | bool | `false` |  |
| base.global.istionamespace | string | `"istio-system"` |  |
| istiod.global.istionamespace | string | `"istio-system"` |  |
| istiod.global.proxy.clusterdomain | string | `"cluster.local"` |  |
| istiod.global.proxy.privileged | bool | `false` |  |
| istiod.global.proxy.resources.limits.cpu | string | `"2000m"` |  |
| istiod.global.proxy.resources.limits.memory | string | `"1024Mi"` |  |
| istiod.global.proxy.resources.requests.cpu | string | `"100m"` |  |
| istiod.global.proxy.resources.requests.memory | string | `"128Mi"` |  |
| istiod.global.waypoint.resources.limits.cpu | string | `"2"` |  |
| istiod.global.waypoint.resources.limits.memory | string | `"1Gi"` |  |
| istiod.global.waypoint.resources.requests.cpu | string | `"100m"` |  |
| istiod.global.waypoint.resources.requests.memory | string | `"128Mi"` |  |

