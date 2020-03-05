#!/bin/bash

docker build -t hex-builder .
docker rm hex-builder
docker create --name hex-builder hex-builder
docker cp hex-builder:blf-a6.hex blf-a6.hex
docker rm hex-builder