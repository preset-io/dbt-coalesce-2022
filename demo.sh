preset-cli --workspaces=https://a9322c86.us2a.app.preset.io/ \
 superset sync dbt-core ./target/manifest.json \
 --project=jaffle_shop --target=dev --profiles=../profiles.yml\
 --exposures=./models/exposures.yaml \
 --import-db \
 --external-url-prefix=http://localhost:8081/
