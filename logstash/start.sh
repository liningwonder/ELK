#!/bin/bash

#---------------------------------------------------
# Licensed to the China UnionPay License (UPL)
# lining@unionpaysmart.com
# All rights reversed
#---------------------------------------------------

# shellcheck disable=SC2046
APP_HOME_PATH=$(cd `dirname $0`; pwd)
cd $APP_HOME_PATH

nohup ./bin/logstash -f filebeat-logstash-es.conf --config.reload.automatic >> elk.log 2>&1 &