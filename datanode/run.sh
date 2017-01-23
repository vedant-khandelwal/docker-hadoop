#!/bin/bash

datadir=`echo $HDFS_CONF_dfs_datanode_data_dir | perl -pe 's#file://##'`
if [ ! -d $datadir ]; then
  echo "Datanode data directory not found: $datadir"
  mkdir -p $datadir
fi

exec $HADOOP_PREFIX/bin/hdfs --config $HADOOP_CONF_DIR datanode
