#!/bin/bash
source ./cyyEnv.sh

if [ -z "$HADOOP_CONF_DIR" ] || [ -z "$ZOOKEEPER_CONF_DIR" ] || [ -z "$HBASE_CONF_DIR" ] || [ -z "$PIG_CONF_DIR" ] ; then
	echo "WRONG ENVIRONMENT,LACK SOME HADOOP VARIABLE"
	exit 0
fi




sudo rm -rf /etc/hadoop/conf

sudo cp -r ./hdp_manual_install_rpm_helper_files-2.1.5.695-1/configuration_files/core_hadoop /etc/hadoop/conf

sudo chown hdfs:hadoop /etc/hadoop/conf
sudo chmod 775 /etc/hadoop/conf



sudo rm -r $ZOOKEEPER_CONF_DIR ;
sudo mkdir -p $ZOOKEEPER_CONF_DIR ;

sudo cp -r hdp_manual_install_rpm_helper_files-2.1.5.695-1/configuration_files/zookeeper/* $ZOOKEEPER_CONF_DIR 

sudo chmod a+x $ZOOKEEPER_CONF_DIR/;
sudo chown -R $ZOOKEEPER_USER:$HADOOP_GROUP $ZOOKEEPER_CONF_DIR/../  ;
sudo chmod -R 755 $ZOOKEEPER_CONF_DIR/../




sudo rm -r $HBASE_CONF_DIR ;
sudo mkdir -p $HBASE_CONF_DIR ;


sudo cp -r hdp_manual_install_rpm_helper_files-2.1.5.695-1/configuration_files/hbase/* $HBASE_CONF_DIR/

sudo chmod a+x $HBASE_CONF_DIR/;
sudo chown -R $HBASE_USER:$HADOOP_GROUP $HBASE_CONF_DIR/../  ;
sudo chmod -R 755 $HBASE_CONF_DIR/../




sudo rm -r $PIG_CONF_DIR
sudo mkdir -p $PIG_CONF_DIR

sudo cp -r hdp_manual_install_rpm_helper_files-2.1.5.695-1/configuration_files/pig/* $PIG_CONF_DIR

sudo chmod -R 755 $PIG_CONF_DIR



