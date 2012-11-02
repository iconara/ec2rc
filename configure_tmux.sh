#!/bin/bash

set -e -x

echo "set-option -g prefix C-q" > /home/ec2-user/.tmux.conf
chown ec2-user:ec2-user /home/ec2-user/.tmux.conf
