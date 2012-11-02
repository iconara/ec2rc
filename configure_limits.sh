#!/bin/bash

set -e -x

echo '* soft nofile 131072' >> /etc/security/limits.conf
echo '* hard nofile 131072' >> /etc/security/limits.conf
