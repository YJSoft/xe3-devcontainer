#!/bin/bash
# stop apache to update config
sudo service nginx stop

# set nginx config
sudo cp -f $PWD/.devcontainer/nginx/web.conf /etc/nginx/sites-enabled/default
sudo cp -f $PWD/.devcontainer/nginx/rhymix.conf /etc/nginx/snippets/rhymix.conf