#!/bin/bash
FILE_NAME = szymczys-0.0.1-SNAPSHOT.jar
JAR_PATH=/home/myApp/target/$FILE_NAME
PID=$(ps -ef | grep "$FILE_NAME" | grep -v grep | awk '{print $2}')
java -jar "$JAR_PATH"
