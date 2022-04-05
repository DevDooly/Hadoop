#!/bin/bash

source config.sh

sudo $ZOOKEEPER_BIN/zkCli.sh -server 127.0.0.1:2181
