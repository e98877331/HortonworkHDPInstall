#!/bin/bash
#source ./usersAndGroups.sh
#source ./directories.sh
source ../cyyEnv.sh

sudo su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR start namenode"
#sudo su - hdfs -c "/usr/lib/hadoop/sbin/hadoop-daemon.sh --config $HADOOP_CONF_DIR start datanode"

sudo su - yarn -c "/usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR start resourcemanager"
#sudo su - yarn -c "/usr/lib/hadoop-yarn/sbin/yarn-daemon.sh --config $HADOOP_CONF_DIR start nodemanager"


sudo su - mapred -c "/usr/lib/hadoop-mapreduce/sbin/mr-jobhistory-daemon.sh --config $HADOOP_CONF_DIR start historyserver"


#sudo su - zookeeper -c 'source /etc/zookeeper/conf/zookeeper-env.sh ; export ZOOCFGDIR=/etc/zookeeper/conf;/usr/lib/zookeeper/bin/zkServer.sh start >> /var/log/zookeeper/zoo.out 2>&1'

#sudo su - hbase -c '/usr/lib/hbase/bin/hbase-daemon.sh --config $HBASE_CONF_DIR start master'

#sudo su - hbase -c '/usr/lib/hbase/bin/hbase-daemon.sh --config $HBASE_CONF_DIR start regionserver'

