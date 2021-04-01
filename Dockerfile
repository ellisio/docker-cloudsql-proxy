FROM gcr.io/cloudsql-docker/gce-proxy:1.20.2-alpine

ENV CLOUD_SQL_PROXY_VERSION="v1.20.2"

COPY cloud_sql_proxy.sh ./

EXPOSE 5432

CMD ["sh", "./cloud_sql_proxy.sh"]
