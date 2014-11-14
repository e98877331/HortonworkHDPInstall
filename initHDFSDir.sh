#!/bin/bash
source ./cyyEnv.sh





sudo su - hdfs -c "hadoop fs -mkdir -p /user/hdfs"


sudo su - hdfs -c "hadoop fs -mkdir -p /mr-history/tmp"
sudo su - hdfs -c "hadoop fs -chmod -R 1777 /mr-history/tmp"
sudo su - hdfs -c "hadoop fs -mkdir -p /mr-history/done"
sudo su - hdfs -c "hadoop fs -chmod -R 1777 /mr-history/done"
sudo su - hdfs -c "hadoop fs -chown -R $MAPRED_USER:$HDFS_USER /mr-history"
sudo su - hdfs -c "hadoop fs -mkdir -p /app-logs"
sudo su - hdfs -c "hadoop fs -chmod -R 1777 /app-logs"
sudo su - hdfs -c "hadoop fs -chown yarn /app-logs"



sudo su - hdfs -c "hadoop fs -mkdir -p /apps/hbase"
sudo su - hdfs -c "hadoop fs -chown -R hbase /apps/hbase"
