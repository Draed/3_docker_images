# AUTHOR:         Ottomatic
# DESCRIPTION:    Ubuntu Image

FROM ubuntu:latest
LABEL maintainer="Ottomatic"

# LANGUAGE is used to set messages languages
# for FR use : fr_FR.utf8
ENV LANGUAGE en_US.UTF-8
# LANG contain the setting for all categories that are not directly set by a LC_* variable.
ENV LANG en_US.UTF-8
# force applications to use the default language for output
ENV LC_ALL C
# prevent configuration screen when dpkg or apt
ARG DEBIAN_FRONTEND=noninteractive
# default editor
ENV EDITOR nano


# Set the locale settings
ADD     scripts/locals.sh /dockerbase/
RUN     /dockerbase/locals.sh

# install / upgrade packet
ADD     scripts/packet.sh /dockerbase/
RUN     /dockerbase/packet.sh


# configure ssh with key access
#COPY ssh/your_key.pub /tmp/your_key.pub
#RUN cat /tmp/your_key.pub >> /root/.ssh/authorized_keys && rm -f /tmp/your_key.pub


# Config runit
ADD     build/runit/1 /etc/runit/1
ADD     build/runit/1.d/cleanup-pids /etc/runit/1.d/cleanup-pids
ADD     build/runit/2 /etc/runit/2


## log management

## snmp management

## ssh management




