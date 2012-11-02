#!/bin/bash

set -e -x

curl -L https://get.rvm.io | bash -s stable
usermod -a -G rvm ec2-user
usermod -a -G rvm root
