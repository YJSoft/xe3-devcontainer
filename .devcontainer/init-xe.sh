#!/bin/bash
# load .env
export $(grep -v '^#' $PWD/.env | xargs)

# clone xe if not exists
if [ ! -d "$PWD/xe" ] 
then
    gh repo clone $XE_REPO $PWD/xe

    pushd $PWD/xe
    git checkout $XE_BRANCH
    popd
fi

# remove previous files folder
rm -rf $PWD/xe/files

# set config
cp -f $PWD/.devcontainer/config.php $PWD/xe/config/config.user.inc.php
cp -f $PWD/.devcontainer/install-xe.php $PWD/xe/config/install.config.php

# link repo to /var/www/ to access from web
sudo ln -s $PWD/xe /var/www/

# create db (only first time)
sudo service mysql start
sudo mysql -uroot -proot -e "CREATE DATABASE xpressengine CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci"
sudo mysql -uroot -proot -e "CREATE USER 'xpressengine'@localhost IDENTIFIED BY 'xpressengine'"
sudo mysql -uroot -proot -e "GRANT ALL ON xpressengine.* to xpressengine@localhost; FLUSH PRIVILEGES"