#!/bin/bash
source ./cyyEnv.sh

sudo su - zookeeper -c 'source /etc/zookeeper/conf/zookeeper-env.sh ; export ZOOCFGDIR=/etc/zookeeper/conf;/usr/lib/zookeeper/bin/zkServer.sh start >> /var/log/zookeeper/zoo.out 2>&1'

sudo su - hbase -c '/usr/lib/hbase/bin/hbase-daemon.sh --config $HBASE_CONF_DIR start master'
