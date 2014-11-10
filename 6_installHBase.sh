#!/bin/bash


sudo rm -r $HBASE_CONF_DIR ;
sudo mkdir -p $HBASE_CONF_DIR ;


sudo cp -r hdp_manual_install_rpm_helper_files-2.1.5.695-1/configuration_files/hbase/* $HBASE_CONF_DIR/

sudo chmod a+x $HBASE_CONF_DIR/;
sudo chown -R $HBASE_USER:$HADOOP_GROUP $HBASE_CONF_DIR/../  ;
sudo chmod -R 755 $HBASE_CONF_DIR/../
