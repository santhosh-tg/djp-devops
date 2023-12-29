#!/bin/bash
bold=$(tput bold)
normal=$(tput sgr0)

echo -e "\n\e[0;32m${bold}Downloading and copying jenkins plugin directory to Jenkins ${normal}"
if [[ ! -d /var/lib/jenkins/plugins ]]; then
wget https://sunbirdpublic.blob.core.windows.net/installation/plugins-2-319-3.tar
tar -xf plugins-2-319-3.tar
mv plugins /var/lib/jenkins/
chown -R jenkins:jenkins /var/lib/jenkins/plugins
else
wget https://sunbirdpublic.blob.core.windows.net/installation/plugins-2-319-3.tar
tar -xf plugins-2-319-3.tar
cp -rf plugins/* /var/lib/jenkins/plugins/
chown -R jenkins:jenkins /var/lib/jenkins/plugins
fi

echo -e "\n\e[0;32m${bold}Clean up${normal}"
rm -rf plugins.tar plugins m2-slim.tar

echo -e "\n\e[0;32m${bold}Go to manage jenkins -> Plugin manager -> Update center -> Check status of installation OR Check the list of installed plugins${normal}"
