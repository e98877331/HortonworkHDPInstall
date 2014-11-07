#!/bin/bash
source ./usersAndGroups.sh
source ./directories.sh


sudo su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR stop namenode"
sudo su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR stop datanode"

sudo su - yarn -c "/usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR stop resourcemanager"
sudo su - yarn -c "/usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR stop nodemanager"


sudo su - mapred -c "/usr/lib/hadoop-mapreduce/sbin/mr-jobhistory-daemon.sh --config $HADOOP_CONF_DIR stop historyserver"
