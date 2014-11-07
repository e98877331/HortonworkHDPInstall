#!/bin/bash
sudo apt-get -y install ntp
sudo /etc/init.d/ntp start
sudo service ufw stop
