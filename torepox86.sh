#!/bin/bash


#download packages inserted in file from aarch64 ca-artifacts repo and creates repo 


for pkg in $(awk '{print $1}' $1); do
        wget -O ./repo/$pkg.rpm http://ca-artifacts.us.oracle.com/auto-build/epel/7/x86_64/$pkg.rpm
done
createrepo /root/repo/repo --update
yum clean metadata
for pkg in $(awk '{print $1}' $1); do
        yum install $pkg
done
