#!/bin/sh

SHELL_PATH=`pwd -P`

# install java
sudo apt install openjdk-8-jdk openjdk-8-jre
 
# create user for apache zookeeper
sudo useradd nextgen -m
sudo usermod --shell /bin/bash nextgen
sudo passwd nextgen
sudo usermod -aG sudo nextgen
sudo getent group sudo

# create a data directory for apache zookeeper
sudo mkdir -p /data/zookeeper
sudo chown nextgen:nextgen /data/zookeeper

# install zookeeper
cd /opt

# Download zookeeper
wget https://archive.apache.org/dist/zookeeper/zookeeper-3.8.0/apache-zookeeper-3.8.0-bin.tar.gz

# unzip
sudo tar -xvf apache-zookeeper-3.8.0-bin.tar.gz
sudo chown nextgen:nextgen -R apache-zookeeper-3.8.0-bin

# make symbolic link
sudo ln -s apache-zookeeper-3.8.0-bin zookeeper
sudo chown -h nextgen:nextgen zookeeper

# configuring apache zookeeper
sudo cp $SHELL_PATH/zoo.cfg /opt/zookeeper/conf/zoo.cfg
