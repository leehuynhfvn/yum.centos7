#!/bin/sh
docker run -d \
    -e http_proxy='web.proxy:8080' \
    -e https_proxy='web.proxy:8080' \
    -v /u01/repo.data/:/repo \
    -p 8084:80 \
    --name=centos7yum \
    "registry.ku8s.ctrm:5000/yum:0.5" 
