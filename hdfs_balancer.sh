#!/bin/bash
# HDFS Balancer Script
# Checks threshold and runs balancer

THRESHOLD=10
LOG_FILE="/var/log/hadoop/hdfs/balancer.log"

echo "Starting HDFS Balancer at $(date)" >> $LOG_FILE

hdfs balancer -threshold $THRESHOLD >> $LOG_FILE 2>&1

if [ $? -eq 0 ]; then
  echo "Balancer completed successfully." >> $LOG_FILE
else
  echo "Balancer failed." >> $LOG_FILE
  exit 1
fi
