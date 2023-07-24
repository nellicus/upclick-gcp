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
