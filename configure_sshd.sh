#!/bin/bash

set -e -x

sed -i -e's/#AllowAgentForwarding/AllowAgentForwarding/' /etc/ssh/sshd_config
service sshd reload
