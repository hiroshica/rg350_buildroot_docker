#!/bin/sh
docker login && docker build -t hiroshica/builetoolchain . && docker push hiroshica/buildtoolchain
