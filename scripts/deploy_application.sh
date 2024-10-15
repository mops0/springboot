#!/bin/bash
FILE_NAME = szymczys-0.0.1-SNAPSHOT.jar
JAR_PATH=/home/ubuntu/myApp/target/$FILE_NAME
PID=$(ps -ef | grep "$FILE_NAME" | grep -v grep | awk '{print $2}')
kill -9 $PID
echo "Application stopped."
java -jar "$JAR_PATH"
echo "New version of the application run."
