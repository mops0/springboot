#!/bin/bash
FILE_NAME="szymczys-0.0.1-SNAPSHOT.jar"
JAR_PATH="/home/ubuntu/myapp/target/$FILE_NAME"
PID=$(ps -ef | grep "$FILE_NAME" | grep -v grep | awk '{print $2}')
if [ -n "$PID" ]; then
kill -9 $PID
fi
nohup sudo java -jar "$JAR_PATH"  > /home/ubuntu/myapp/scripts/installation.log 2>&1 &

