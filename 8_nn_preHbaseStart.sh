#!/bin/bash
source ./cyyEnv.sh

sudo su - hdfs -c "hadoop --config $HADOOP_CONF_DIR namenode -format"



sudo su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR start namenode"

sudo su - yarn -c "/usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR start resourcemanager"


echo "===================================================="
echo "Now it's time to up all DataNode!"
echo "===================================================="
