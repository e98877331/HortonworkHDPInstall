#!/bin/bash
#source ./usersAndGroups.sh
#source ./directories.sh
source ../cyyEnv.sh

#sudo su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR start namenode"
sudo su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR start datanode"

#sudo su - yarn -c "/usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR start resourcemanager"
sudo su - yarn -c "/usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR start nodemanager"






#sudo su - hbase -c '/usr/lib/hbase/bin/hbase-daemon.sh --config $HBASE_CONF_DIR start regionserver'

