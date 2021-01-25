echo $PSE_NAME
echo $SO
echo $ARCHITECTURE

exit 0

rpm --import https://mirror.go-repo.io/centos/RPM-GPG-KEY-GO-REPO
curl -s https://mirror.go-repo.io/centos/go-repo.repo | tee /etc/yum.repos.d/go-repo.repo

yum install -y rpm-build rpmdevtools redhat-rpm-config
yum install -y git wget make golang-bin
yum install -y epel-release
yum update -y
yum install -y jq