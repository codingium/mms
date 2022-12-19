#!/bin/bash

tag=mms-db
name=mms-psql
port=5432

if [ "$1" == "create" ]; then
  echo "Creating docker image with: ${tag}:latest"
  docker build --tag "${tag}:latest" . > /dev/null
  echo "Start docker container: ${name}"
  docker run --name $name -p 5432:5432 -d "${tag}:latest" > /dev/null
elif [ "$1" == "delete" ]; then
  echo "stop container: ${name}"
  docker kill ${name} > /dev/null
  echo "delete container: ${name}"
  docker rm $name > /dev/null
  echo "delete image: ${tag}:latest"
  docker rmi "${tag}:latest" > /dev/null
else
  echo "use create or delete on command"
fi