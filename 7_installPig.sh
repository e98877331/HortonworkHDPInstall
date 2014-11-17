#!/bin/bash

source ./cyyEnv.sh
sudo apt-get  --yes --force-yes install pig

sudo rm -r $PIG_CONF_DIR
sudo mkdir -p $PIG_CONF_DIR

sudo cp -r hdp_manual_install_rpm_helper_files-2.1.5.695-1/configuration_files/pig/* $PIG_CONF_DIR

sudo chmod -R 755 $PIG_CONF_DIR
