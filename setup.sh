#!/bin/bash

set -e -x

PATH="$PATH:/opt/aws/bin"

# enable epel (but not epel-debug and epel-sources)
sed -i -e'0,/enabled=0/{s/enabled=0/enabled=1/}' /etc/yum.repos.d/epel.repo

yum upgrade -y
