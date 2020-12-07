#!/bin/sh
# Author : Ottomatic
# Description : isntall locales
apt-get clean && apt-get update && apt-get install -y locales
locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales