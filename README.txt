#prepare
1. hostname -f to make sure your Full Qualified Domain name
2. modify /etc/hosts to make all mechine ping-able
3. run relaceString.sh vm1.cyy.com $your_namenode_FQDN  to modify config file content
4. . cyyEnv.sh to load the environments

#install
1. run 1 ~ 3
2. source cyyEnv in /etc/profile
3. run 5, vim will open automatically, insert "1" or "2" or "3" for zookeeper servers 
4. run 6 ~ 7

#start node and create hdfs dirs
5. run 8_nn_.. for name node, 
6. run 8_dn.. for all data node
7. run 9
8. run 10_nn.. for name node
9. run 10_dn.. for all datanode
