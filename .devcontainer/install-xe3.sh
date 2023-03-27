#!/bin/bash

# set domain
sed -i "s/%DOMAIN%/$CODESPACE_NAME-80.preview.app.github.dev/g" $PWD/.devcontainer/install.yaml
cp -f $PWD/.devcontainer/install.yaml $PWD/xe3/.dev-install.yaml

# fix domain problem
sed -i '/^<?php$/a \\n$_SERVER['"'"'HTTP_HOST'"'"'] = isset($_SERVER['"'"'HTTP_X_FORWARDED_HOST'"'"']) ? $_SERVER['"'"'HTTP_X_FORWARDED_HOST'"'"'] : "localhost";' $PWD/xe3/index.php

# install xe3
pushd $PWD/xe3
php -r "copy('http://start.xpressengine.io/download/installer', 'installer');"
php installer install --config=.dev-install.yaml --no-interact
popd