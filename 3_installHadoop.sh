#!/bin/bash
umask 0022
sudo wget http://public-repo-1.hortonworks.com/HDP/ubuntu12/2.1.5.0/hdp.list -O /etc/apt/sources.list.d/hdp.list
gpg --keyserver pgp.mit.edu --recv-keys B9733A7A07513CAD
#following can only run by root
sudo gpg -a --export 07513CAD | apt-key add -
sudo apt-get update
sudo apt-get --yes --force-yes install hadoop hadoop-hdfs libhdfs0 libhdfs0-dev hadoop-yarn hadoop-mapreduce hadoop-client openssl
sudo apt-get --yes --force-yes install libsnappy1 libsnappy-dev
sudo ln -sf /usr/lib64/libsnappy.so /usr/lib/hadoop/lib/native/.
sudo apt-get --yes --force-yes install liblzo2-2 liblzo2-dev hadoop-lzo zookeeper hbase

#create all directories
sudo -E hdp_manual_install_rpm_helper_files-2.1.5.695-1/scripts/createDirectories.sh

sudo mv /etc/hadoop/conf /etc/hadoop/confbak

sudo cp -r ./hdp_manual_install_rpm_helper_files-2.1.5.695-1/configuration_files/core_hadoop /etc/hadoop/conf

sudo chown hdfs:hadoop /etc/hadoop/conf
sudo chmod 775 /etc/hadoop/conf

echo "==============================================="
echo "remember to source $PWD/cyyEnv.sh in /etc/profile"
echo "==============================================="
