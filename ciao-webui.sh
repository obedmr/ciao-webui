#!/bin/bash


if [ "$1" == "" ]; then
    env="production"
else
    env=$1
fi
echo "Environment: "$env

export NODE_ENV=$env

if [ "$2" == "" ]; then
    node /usr/local/ciao-webui/bin/www  "config_file=/usr/share/ciao-webui/ciao_config.json"

else
    node /usr/local/ciao-webui/bin/www " $@"
fi