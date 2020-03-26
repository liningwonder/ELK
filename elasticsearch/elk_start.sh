#!/bin/bash

#---------------------------------------------------
# Licensed to the China UnionPay License (UPL)
# lining@unionpaysmart.com
# All rights reversed
#---------------------------------------------------

#usage example sh elk_start.sh


# shellcheck disable=SC2046
APP_HOME_PATH=$(cd `dirname $0`; pwd)
cd $APP_HOME_PATH
export JAVA_HOME=/home/lining/jdk1.8.0_221
nohup ./elasticsearch >> start_elk.log 2>&1 &