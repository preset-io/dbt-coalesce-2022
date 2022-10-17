# Setting up env variables
source ./vars.sh


# Syncing dbt models as Superset datasets
# AND
# brining back associated charts and dashboards as dbt exposures
preset-cli --workspaces=$TARGET_WORKSPACES \
 superset sync dbt-core ../target/manifest.json \
 --project=jaffle_shop \
 --exposures=./models/exposures.yaml \
 --import-db \
 --external-url-prefix=http://localhost:8080/

dbt docs generate

# To serve the docs
# dbt docs serve
