#!/bin/bash

#---------------------------------------------------
# Licensed to the China UnionPay License (UPL)
# lining@unionpaysmart.com
# All rights reversed
#---------------------------------------------------

# shellcheck disable=SC2046
APP_HOME_PATH=$(cd `dirname $0`; pwd)
cd $APP_HOME_PATH
nohup ./filebeat -e -c filebeat.yml >> elk.log 2>&1 &