#!/bin/bash
# stop lighttpd to update config
sudo kill -9 $(cat /run/lighttpd.pid)
sudo service lighttpd stop

# set lighttpd config
sudo sed -i "s/var\/www\/html/var\/www\/rhymix/g" /etc/lighttpd/lighttpd.conf
sudo cp -f $PWD/.devcontainer/lighttpd/php.conf /etc/lighttpd/conf-available/15-fastcgi-php.conf
sudo cp -f $PWD/.devcontainer/lighttpd/rhymix.conf /etc/lighttpd/conf-enabled/20-rhymix.conf

# copy some template
sudo cp -f $PWD/.devcontainer/lighttpd/403.html /var/www/403.html
sudo chown www-data:www-data /var/www/403.html

# enable php
sudo lighttpd-enable-mod rewrite
sudo lighttpd-enable-mod fastcgi
sudo lighttpd-enable-mod fastcgi-php