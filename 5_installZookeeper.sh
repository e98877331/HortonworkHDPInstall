#!/bin/bash
#sudo apt-get install zookeeper
sudo usermod zookeeper -s /bin/bash


sudo rm -r $ZOOKEEPER_CONF_DIR ;
sudo mkdir -p $ZOOKEEPER_CONF_DIR ;

sudo cp -r hdp_manual_install_rpm_helper_files-2.1.5.695-1/configuration_files/zookeeper/* $ZOOKEEPER_CONF_DIR 

sudo chmod a+x $ZOOKEEPER_CONF_DIR/;
sudo chown -R $ZOOKEEPER_USER:$HADOOP_GROUP $ZOOKEEPER_CONF_DIR/../  ;
sudo chmod -R 755 $ZOOKEEPER_CONF_DIR/../

#sudo su - zookeeper -c "vim /grid/hadoop/zookeeper/data/myid"

sudo su - zookeeper -c "vim /grid/hadoop/zookeeper/data/myid"


#sudo su - zookeeper -c 'source /etc/zookeeper/conf/zookeeper-env.sh ; export ZOOCFGDIR=/etc/zookeeper/conf;/usr/lib/zookeeper/bin/zkServer.sh start >> /var/log/zookeeper/zoo.out 2>&1'
echo "===================================================="
echo "create $ZOOKEEPER_DATA_DIR/myid then specify server id"
echo "===================================================="


