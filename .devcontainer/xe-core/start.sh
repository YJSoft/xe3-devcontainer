#!/bin/bash

pushd $PWD/xe
git pull
popd

sudo service mysql start
sudo service apache2 start