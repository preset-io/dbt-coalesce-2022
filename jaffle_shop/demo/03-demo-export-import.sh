# Setting up env variables
source ./vars.sh

export SUPERSET_ASSETS_FOLDER=../../superset-assets/

# Syncing my dashboard to the local repo / filesystem
# preset-cli --workspaces=$SOURCE_WORKSPACES superset export --overwrite --asset-type dashboard --dashboard-ids 8 $SUPERSET_ASSETS_FOLDER

# Syncing the local file system folder to the target workspace
preset-cli --workspaces=$TARGET_WORKSPACES superset import-assets --load-env --overwrite $SUPERSET_ASSETS_FOLDER
