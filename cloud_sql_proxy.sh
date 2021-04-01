#!/usr/bin/env sh
set -eu

echo ${GCLOUD_SERVICE_KEY} | base64 -d > ${HOME}/gcloud-service-key.json

./cloud_sql_proxy \
  -instances=${GCLOUD_INSTANCE}=tcp:0.0.0.0:5432 \
  -credential_file=${HOME}/gcloud-service-key.json \
  -dir=${HOME}/cloudsql
