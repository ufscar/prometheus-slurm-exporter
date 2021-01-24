# Checks if specified version of Prometheus Slurm Exporter exists
TARGZ="${SO}-${ARCHITECTURE}.tar.gz"
OWNER_REPO="vpenso/prometheus-slurm-exporter"
if [[ -n $PSE_VERSION ]]; then
  PSE_JSON=$(curl -s "https://api.github.com/repos/${OWNER_REPO}/releases")
  PSE_URL=$(echo "$PSE_JSON" | jq -rc ".[] | select(.tag_name==\"${PSE_VERSION}\")) | .assets[] | select(.browser_download_url | contains(\"${TARGZ}\")) | .browser_download_url")
fi;
if [[ -z $PSE_URL ]]; then
  PSE_JSON=$(curl -s "https://api.github.com/repos/${OWNER_REPO}/releases/latest")
  PSE_VERSION=$(echo "$PSE_JSON" | jq -rc ".tag_name")
fi;
PSE_JSON=$(curl -s "https://api.github.com/repos/${OWNER_REPO}/releases/tags/${PSE_VERSION}")
PSE_URL=$(echo "$PSE_JSON" | jq -rc ".tarball_url")