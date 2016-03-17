#!/bin/sh
rm /etc/yum.repos.d/*

cp /repo.def/* /etc/yum.repos.d/

cd /repo 
reposync -a x86_64
createrepo .
