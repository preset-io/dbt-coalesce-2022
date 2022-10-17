# Setting up env variables
export SOURCE_WORKSPACES=https://a9322c86.us2a.app.preset.io
export TARGET_WORKSPACES=https://8d5d3fdf.us2a.app.preset.io

# Syncing my dashboard to the local repo / filesystem
preset-cli --workspaces=$SOURCE_WORKSPACES superset export --overwrite --asset-type dashboard --dashboard-ids 8 ../superset-assets
