#!/bin/bash

sudo su - hdfs -c "hadoop fs -copyFromLocal /etc/passwd /user/hdfs/passwd"
sudo su - hdfs -c "pig $PWD/test.pig"


