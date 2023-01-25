#!/bin/bash

pushd $PWD/rhymix
git pull
popd

sudo service mysql start
sudo service apache2 start