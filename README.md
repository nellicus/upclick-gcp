# UpClick

## Description

A demo 2nd gen Pub/Sub NodeJS cloud function triggered by GCP scheduler via pub/sub messages containing a target website.
The target website is tested for latency and related captured metrics, enriched by geo data using MaxMind geo-ip lite, are sent to ClickHouse Cloud.


## Technology stack

- GCP: 2nd Gen Pub/Sub Cloud Function,pub/sub topic, cloud scheduler
- ClickHouse
- NodeJS  


### GCP Service Accounts Permissions

- Cloud Run Developer
- Pub/Sub Lite Editor


## Setting it up

### Requirements

Beside having a GCP project active, you will need to have the following installed in your system:

- yarn 1.22.19
- node 20.3.0
- gcloud (CLI)
  
### Secrets

Create a file named `.env.local` at the root of the project as:

```
APP_NAME: upclick_gcp

### CLICKHOUSE
CLICKHOUSE_HOST: https://your_clickhouse_cloud_service.region.provider.clickhouse.cloud:8443
CLICKHOUSE_USERNAME: default
CLICKHOUSE_PASSWORD: 'a_very_secret_password'

### MAXMIND
MAX_MIND_ACCOUNT_ID: your_max_mind_accound_id
MAXMIND_LICENSE_KEY: your_max_mind_license_key
```

Replace these values with ones specific to your environment.
You can get ClickHouse cloud trial [here](https://clickhouse.cloud/signUp) and a Max Mind Lite account [here](https://dev.maxmind.com/geoip/geolite2-free-geolocation-data).


### Setting up the repo locally

This will clone this repository on your local machine then install the required modules:

```
git clone https://github.com/nellicus/upclick-gcp
cd upclick-gcp
yarn install
```

