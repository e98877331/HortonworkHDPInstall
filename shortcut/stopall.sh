#!/bin/bash
#source ./usersAndGroups.sh
#source ./directories.sh
source ../cyyEnv.sh

sudo su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR stop namenode"
sudo su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR stop datanode"

sudo su - yarn -c "/usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR stop resourcemanager"
sudo su - yarn -c "/usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR stop nodemanager"


sudo su - mapred -c "/usr/lib/hadoop-mapreduce/sbin/mr-jobhistory-daemon.sh --config $HADOOP_CONF_DIR stop historyserver"


sudo su - zookeeper -c 'source /etc/zookeeper/conf/zookeeper-env.sh ; export ZOOCFGDIR=/etc/zookeeper/conf;/usr/lib/zookeeper/bin/zkServer.sh stop >> /var/log/zookeeper/zoo.out 2>&1'

sudo su - hbase -c '/usr/lib/hbase/bin/hbase-daemon.sh --config $HBASE_CONF_DIR stop master'

sudo su - hbase -c '/usr/lib/hbase/bin/hbase-daemon.sh --config $HBASE_CONF_DIR stop regionserver'

