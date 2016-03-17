#!/bin/sh

mkdir -p /repo
#replace repo
rm /etc/yum.repos.d/*

cp /repo.def/* /etc/yum.repos.d/

yum -y --nogpgcheck install yum-utils createrepo nginx
#clean up 
yum -y clean all

rm -Rf  /etc/nginx/conf.d/*
cp /tmp/nginx.conf /etc/nginx/conf.d/
