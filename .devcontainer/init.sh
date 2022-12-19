#!/bin/bash
# load .env
export $(grep -v '^#' $PWD/.env | xargs)

# clone rhymix if not exists
if [ ! -d "$PWD/rhymix" ] 
then
    gh repo clone $RHYMIX_REPO $PWD/rhymix

    pushd $PWD/rhymix
    git checkout $RHYMIX_BRANCH
    popd
fi

# remove previous files folder
rm -rf $PWD/rhymix/files

# set config
cp -f $PWD/.devcontainer/config.php $PWD/rhymix/config/config.user.inc.php
cp -f $PWD/.devcontainer/install.php $PWD/rhymix/config/install.config.php

# link repo to /var/www/ to access from web
sudo ln -s $PWD/rhymix /var/www/

# create db (only first time)
sudo service mysql start
sudo mysql -uroot -proot -e "CREATE DATABASE rhymix CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci"
sudo mysql -uroot -proot -e "CREATE USER 'rhymix'@localhost IDENTIFIED BY 'rhymix'"
sudo mysql -uroot -proot -e "GRANT ALL ON rhymix.* to rhymix@localhost; FLUSH PRIVILEGES"