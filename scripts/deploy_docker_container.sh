#!/bin/bash

IMAGE_NAME="springappimage"
CONTAINER_NAME="springapp"
DOCKER_FILE_PATH="/home/ubuntu/myapp/"
# Sprawdzam czy istnieje uruchomiony kontener jesli tak to go zakanczam i usuwam proces.


if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
        echo "Stopping and removing existing container"
        docker stop $CONTAINER_NAME
        docker rm $CONTAINER_NAME
        docker rmi $IMAGE_NAME

fi
# Budowanie nowego obrazu

echo " Creating new image "
docker build -t $IMAGE_NAME $DOCKER_FILE_PATH

#Sprawdzanie czy obraz zostal poprwanie stworzony

if [ $? -ne  0 ]; then
        echo "Error during image creation"
        exit 1
fi

#Tworzeni nowego kontenera

echo "Running new container"
docker run --detach --name $CONTAINER_NAME -p 8080:8080 $IMAGE_NAME

#Sprawdzanie czy kontener wystartowal poprawnie

if [ $? -eq 0 ]; then
        echo "Container $CONTAINER_NAME started correctly on image $IMAGE_NAME"
else
        echo "Error while running container"
        exit 1
fi

