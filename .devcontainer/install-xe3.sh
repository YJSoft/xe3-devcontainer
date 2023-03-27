#!/bin/bash

# set domain
sudo sed -i "s/%DOMAIN%/$CODESPACE_NAME-80.preview.app.github.dev/g" $PWD/.devcontainer/install.yaml
cp -f $PWD/.devcontainer/install.yaml $PWD/xe3/.dev-install.yaml

# install xe3
pushd $PWD/xe3
php -r "copy('http://start.xpressengine.io/download/installer', 'installer');"
php installer install --config=.dev-install.yaml --no-interact
popd