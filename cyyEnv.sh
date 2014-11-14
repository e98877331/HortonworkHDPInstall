#!/bin/bash
CYYROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#cyy add for hadoop 
source $CYYROOT/hdp_manual_install_rpm_helper_files-2.1.5.695-1/scripts/usersAndGroups.sh
source $CYYROOT/hdp_manual_install_rpm_helper_files-2.1.5.695-1/scripts/directories.sh
JAVA_HOME=/usr/lib/jvm/java-7-oracle
