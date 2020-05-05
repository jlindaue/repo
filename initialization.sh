#!/bin/bash
#set this as executable
export https_proxy=""
yum install -y createrepo vim wget
mv /etc/yum.repos.d/epel.repo /root/repo/epel.repo.orig
mv /root/repo/local.repo /etc/yum.repos.d/local.repo
mv /root/repo/epel.repo /etc/yum.repos.d/epel.repo
mkdir /root/repo/repo
createrepo /root/repo/repo
