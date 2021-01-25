export PSE_VERSION
export PSE_URL
export PSE_NAME=prometheus-slurm-exporter
if [[ -z $SO ]]; then
  export SO=linux
fi;
if [[ -z $ARCHITECTURE ]]; then
  export ARCHITECTURE=amd64
fi;
echo $PSE_VERSION
echo $PSE_URL
echo $PSE_NAME
echo $SO
echo $ARCHITECTURE

echo "PSE_VERSION=$PSE_VERSION" >> $PSE_VERSION
echo "PSE_URL=$PSE_URL" >> $PSE_URL
echo "PSE_NAME=$PSE_NAME" >> $PSE_NAME
echo "SO=$SO" >> $SO
echo "ARCHITECTURE=$ARCHITECTURE" >> $ARCHITECTURE