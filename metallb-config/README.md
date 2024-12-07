# metallb-config

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.14.8](https://img.shields.io/badge/AppVersion-0.14.8-informational?style=flat-square)

A Helm chart for Kubernetes

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| bgpAdvertisement.aggregationLength | int | `29` |  |
| bgpAdvertisement.communities[0] | string | `"65535:65282"` |  |
| bgpAdvertisement.enabled | bool | `false` |  |
| bgpAdvertisement.localPref | int | `100` |  |
| ipAddressPool.addresses | list | `[]` |  |
| l2Advertisement.enabled | bool | `false` |  |

