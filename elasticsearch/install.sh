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

tar -zxvf elasticsearch-7.6.1-linux-x86_64.tar.gz -C /opt/elk





sudo useradd -s /bin/bash -d /opt/lining -m lining

echo "stack ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/lining

#未来的ES需要JDK11

chown -R lining:lining elasticsearch-7.6.1

sudo vi /etc/security/limits.conf

* hard nofile 65536
* soft nofile 65536



sudo vi /etc/sysctl.conf

vm.max_map_count = 262144



sysctl -p


vi elasticsearch.yml

node.name: node-1
network.host: 192.168.67.101
http.port: 9200
cluster.initial_master_nodes: ["node-1"]

firewall-cmd  --zone=public  --add-port=9200/tcp --permanent
firewall-cmd  --zone=public  --add-port=9300/tcp --permanent
firewall-cmd --reload
firewall-cmd --list-ports

chmod 755 elk_start.sh


curl http://192.168.67.101:9200

