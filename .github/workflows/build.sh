name=prometheus-slurm-exporter
targz="${name}.tar.gz"
wget "${PSE_URL}" -O "${targz}" --quiet
tar -xf "${targz}"
f=$(tar -tf "${targz}" | grep -E "^[^/]+/$")
mv "$f" "${name}-${PSE_VERSION}"
tar -czvf "${targz}" "${name}-${PSE_VERSION}"
mv "${name}-${PSE_VERSION}" "${name}"
cp "${targz}" ~/rpmbuild/SOURCES/
cd "${name}" || exit 1
export GOPATH=$(pwd)
rm -f go.mod
go get github.com/prometheus/client_golang/prometheus
go get github.com/sirupsen/logrus
go get gopkg.in/alecthomas/kingpin.v2
make build
cd ..