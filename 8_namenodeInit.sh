#!/bin/bash
source ./cyyEnv.sh

sudo su - hdfs -c "hadoop --config $HADOOP_CONF_DIR namenode -format"



sudo su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR start namenode"
#sudo su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR start datanode"



sudo su - hdfs -c "hadoop fs -mkdir -p /user/hdfs"





sudo su - yarn -c "/usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR start resourcemanager"
#sudo su - yarn -c "/usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR start nodemanager"





#sudo chown -R root:hadoop /usr/lib/hadoop-yarn/bin/container-executor
#sudo chmod -R 650 /usr/lib/hadoop-yarn/bin/container-executor

sudo su - hdfs -c "hadoop fs -mkdir -p /mr-history/tmp"
sudo su - hdfs -c "hadoop fs -chmod -R 1777 /mr-history/tmp"
sudo su - hdfs -c "hadoop fs -mkdir -p /mr-history/done"
sudo su - hdfs -c "hadoop fs -chmod -R 1777 /mr-history/done"
sudo su - hdfs -c "hadoop fs -chown -R $MAPRED_USER:$HDFS_USER /mr-history"
sudo su - hdfs -c "hadoop fs -mkdir -p /app-logs"
sudo su - hdfs -c "hadoop fs -chmod -R 1777 /app-logs"
sudo su - hdfs -c "hadoop fs -chown yarn /app-logs"



sudo su - mapred -c "/usr/lib/hadoop-mapreduce/sbin/mr-jobhistory-daemon.sh --config $HADOOP_CONF_DIR start historyserver"
