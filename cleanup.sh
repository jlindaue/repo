#!/bin/bash

rm /etc/yum.repos.d/epel.repo
rm /etc/yum.repos.d/local.repo
mv /root/repo/epel.repo.orig /etc/yum.repos.d/epel.repo
