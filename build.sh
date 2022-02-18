#!/usr/bin/env bash

PREFIX=cnj
NAME=docker
IMAGE_NAME=$PREFIX/$NAME

#mvn -DskipTests clean package


#demarage docker 1
#docker build -t $IMAGE_NAME .


###Demarage Packbuilder and paketo 2

pack config default-builder  paketobuildpacks/builder:base
pack build $IMAGE_NAME --path .


##Demarage avec Google jib maven 3 ça na pas marché
#mvn -DskipTests clean package jib:dockerBuild -DimageName=$IMAGE_NAME

##Demarage avec Springboot  maven 4
mvn -DskipTests clean package spring-boot:build-image -DimageName=$IMAGE_NAME



docker run -p 8082:8082 -e SERVER_PORT=8082 $IMAGE_NAME
