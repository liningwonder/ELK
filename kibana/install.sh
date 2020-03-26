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

tar -zxvf kinaba-7.6.1-linux-x86_64.tar.gz -C /opt/elk

chown -R lining:lining kinaba-7.6.1

vi kinaba.yml

server.port: 5601
server.host: "192.168.67.101"
elasticsearch.hosts: ["http://192.168.67.101:9200"]


firewall-cmd  --zone=public  --add-port=5601/tcp --permanent
firewall-cmd --reload
firewall-cmd --list-ports


http://192.168.67.101:5601/




