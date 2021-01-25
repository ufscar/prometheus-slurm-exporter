export PSE_VERSION=latest
export PSE_URL
export PSE_NAME=prometheus-slurm-exporter
if [[ -z $SO ]]; then
  export SO=linux
fi;
if [[ -z $ARCHITECTURE ]]; then
  export ARCHITECTURE=amd64
fi;

echo "PSE_VERSION=$PSE_VERSION" >> $GITHUB_ENV
echo "PSE_URL=$PSE_URL" >> $GITHUB_ENV
echo "PSE_NAME=$PSE_NAME" >> $GITHUB_ENV
echo "SO=$SO" >> $GITHUB_ENV
echo "ARCHITECTURE=$ARCHITECTURE" >> $GITHUB_ENV