#!/bin/bash
source ./usersAndGroups.sh
source ./directories.sh


sudo su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR start namenode"
sudo su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR start datanode"

sudo su - yarn -c "/usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR start resourcemanager"
sudo su - yarn -c "/usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR start nodemanager"


sudo su - mapred -c "/usr/lib/hadoop-mapreduce/sbin/mr-jobhistory-daemon.sh --config $HADOOP_CONF_DIR start historyserver"
