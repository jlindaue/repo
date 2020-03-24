#!/bin/bash
#set this as executable
export https_proxy=""
yum install createrepo vim wget
mv /etc/yum.conf /root/repo/yum.conf.orig
mv /etc/yum.repos.d/lxc-install.repo /root/repo/lxc-install.repo.orig
mv /etc/yum.repos.d/epel.repo /root/repo/epel.repo.orig
mv /root/repo/yum.conf /etc/yum.conf
mv /root/repo/lxc-install.repo /etc/yum.repos.d/lxc-install.repo
mkdir /root/repo/repo
createrepo /root/repo/repo --update
