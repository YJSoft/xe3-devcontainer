#!/bin/bash
# load .env
export $(grep -v '^#' $PWD/.env | xargs)

# create xe3 folder if not exists
if [ ! -d "$PWD/xe3" ] 
then
    mkdir $PWD/xe3
fi

# remove previous files folder
rm -rf $PWD/xe3/storage

# link repo to /var/www/ to access from web
sudo ln -s $PWD/xe3 /var/www/
sudo chmod 777 /var/www/xe3

# create db (only first time)
sudo service mysql start
sudo mysql -uroot -proot -e "CREATE DATABASE xe3 CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci"
sudo mysql -uroot -proot -e "CREATE USER 'xpressengine'@localhost IDENTIFIED BY 'xpressengine'"
sudo mysql -uroot -proot -e "GRANT ALL ON xe3.* to xpressengine@localhost; FLUSH PRIVILEGES"