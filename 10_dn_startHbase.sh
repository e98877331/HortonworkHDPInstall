#!/bin/bash
source ../cyyEnv.sh

sudo su - hbase -c '/usr/lib/hbase/bin/hbase-daemon.sh --config $HBASE_CONF_DIR start regionserver'

