orig=$(pwd)
cp "bin/${PSE_NAME}" "${HOME}/rpmbuild/BUILDROOT/${PSE_NAME}"
cp README.md ~/rpmbuild/SOURCES
cp LICENSE ~/rpmbuild/SOURCES
cp "lib/systemd/${PSE_NAME}.service" ~/rpmbuild/SOURCES/
cp "packages/rpm/${PSE_NAME}.spec" ~/rpmbuild/SPECS/
cd ~/rpmbuild/SPECS || exit 1
rpmbuild -bb "${PSE_NAME}.spec"
f=$(ls "$HOME/rpmbuild/RPMS/x86_64/")
cp "$HOME/rpmbuild/RPMS/x86_64/$f" "/builds/$CI_PROJECT_PATH/RPMs/"
rm -f "$HOME/rpmbuild/RPMS/x86_64/$f"
cd "$orig" || exit 1