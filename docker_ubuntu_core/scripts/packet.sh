#!/bin/sh
# Author : Ottomatic
# Description : install packets

# curently not using this 
# Enable Ubuntu Universe and Multiverse.
# sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# sed -i 's/^#\s*\(deb.*multiverse\)$/\1/g' /etc/apt/sources.list

# Update
apt-get update

# Install HTTPS support for APT.
apt-get install -y --no-install-recommends apt-transport-https ca-certificates

# Install add-apt-repository
apt-get install -y --no-install-recommends  software-properties-common

# Upgrade all packages.
apt-get dist-upgrade -y --no-install-recommends

# runit depends on /etc/inittab which is not present in debian:jessie
touch /etc/inittab

# Install some common components
apt-get install -y -q --no-install-recommends wget git curl zip less nano openssh-server runit

# clean up
apt-get clean
rm -rf /tmp/* /var/tmp/*
rm -rf /var/lib/apt/lists/*
