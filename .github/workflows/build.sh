targz="${PSE_NAME}.tar.gz"
cd ..
mkdir "${PSE_NAME}-${PSE_VERSION}"
cp -a "${PSE_NAME}/." "${PSE_NAME}-${PSE_VERSION}/"
tar -czvf "${HOME}/rpmbuild/SOURCES/${targz}" "${PSE_NAME}-${PSE_VERSION}"
cd "${PSE_NAME}" || exit 1
export GOPATH=$(pwd)
rm -f go.mod
go get github.com/prometheus/client_golang/prometheus
go get github.com/sirupsen/logrus
go get gopkg.in/alecthomas/kingpin.v2
make build