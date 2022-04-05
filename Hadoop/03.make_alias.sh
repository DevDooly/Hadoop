#!/bin/sh

SHELL_PATH=`pwd -P`
HADOOP_VERSION=2.7.3
HADOOP_DIR=hadoop-$HADOOP_VERSION

# User specific aliased and functions
echo HADOOP_HOME=$SHELL_PATH/$HADOOP_DIR
echo HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
echo HADOOP_MAPRED_HOME=$HADOOP_HOME
echo HADOOP_COMMON_HOME=$HADOOP_HOME
echo HADOOP_HDFS_HOME=$HADOOP_HOME
echo YARN_HOME=$HADOOP_HOME
echo PATH='$PATH':$HADOOP_HOME/bin
 
# Set JAVA_HOME
# echo JAVA_HOME=`readlink -f $(which java)`
echo JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
echo PATH=$JAVA_HOME/bin:'$PATH'
