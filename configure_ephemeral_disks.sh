#!/bin/bash

set -e -x

index=0
for dev in $(ec2-metadata --block-device-mapping | perl -ne '/ephemeral\d+: (\S+)/ && print "$1\n"'); do
  dev_path=/dev/$(readlink /dev/$dev)
  fs_path="/media/ephemeral$index"

  if [[ ! $(mount | grep $dev_path) ]]; then
    log "Mounting $dev_path at $fs_path"
    mkdir $fs_path
    mount $dev_path $fs_path
  else
    log "Not mounting $dev, already mounted"
  fi

  mkdir -p "$fs_path/tmp"
  chown ec2-user:ec2-user "$fs_path/tmp"

  index=$((index + 1))
done
