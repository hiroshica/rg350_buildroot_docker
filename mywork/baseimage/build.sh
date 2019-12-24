#!/bin/sh
docker login && docker build -t hiroshica/baseimage . && docker push hiroshica/baseimage
