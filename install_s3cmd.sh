#!/bin/bash

set -e -x

cd /tmp && git clone https://github.com/s3tools/s3cmd.git && cd s3cmd && python setup.py install && cd .. && rm -fr s3cmd