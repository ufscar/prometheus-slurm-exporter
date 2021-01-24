mkdir -p ~/rpmbuild/{BUILD,BUILDROOT,RPMS,SOURCES,SPECS,SRPMS}
echo "%_topdir $HOME/rpmbuild" > ~/.rpmmacros

mkdir -p "$CI_REGISTRY/$CI_PROJECT_PATH/RPM/"