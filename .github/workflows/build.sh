name=prometheus-slurm-exporter
targz="${name}.tar.gz"
cd ..
mkdir "${name}-${PSE_VERSION}"
ls
cp "${name}/*" "${name}-${PSE_VERSION}/"
tar -czvf "${HOME}/rpmbuild/SOURCES/${targz}" "${name}-${PSE_VERSION}"
cd "${name}" || exit 1
export GOPATH=$(pwd)
rm -f go.mod
go get github.com/prometheus/client_golang/prometheus
go get github.com/sirupsen/logrus
go get gopkg.in/alecthomas/kingpin.v2
make build
cd ..