#!/bin/bash

#---------------------------------------------------
# Licensed to the China UnionPay License (UPL)
# lining@unionpaysmart.com
# All rights reversed
#---------------------------------------------------

# shellcheck disable=SC2046
APP_HOME_PATH=$(cd `dirname $0`; pwd)
cd $APP_HOME_PATH

function create_dir() {
    if  [ ! -d "$1" ]; then
      mkdir "$1"
    fi
}

create_dir /opt/elk

tar -zxvf logstash-7.6.1.tar.gz -C /opt/elk