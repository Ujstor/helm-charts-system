# crunchy-postgres-operator

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

