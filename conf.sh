#!/bin/bash

export CONF=/root/application.conf
export DOCKER_IP=`hostname -i`

sed -i "s#{?HOSTNAME}#$HOSTNAME#g" $CONF
sed -i "s#{?DOCKER_IP}#$DOCKER_IP#g" $CONF
sed -i "s#{?CONTACT}#$CONTACT#g" $CONF
