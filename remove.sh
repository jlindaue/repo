#!/bin/bash


#download packages inserted in file from aarch64 ca-artifacts repo and creates repo 
for pkg in $(awk '{print $1}' $1); do
        yum remove $pkg
	rm -f /root/repo/repo/$pkg
done

createrepo /root/repo/repo --update
yum clean metadata
