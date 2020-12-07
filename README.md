# docker images

This repository regroup all my docker images. 
I try my best to not depend on someone else images's and use official docker images.

## architecture and description :

Docker core images (based on debian or on ubunbtu) are the base image for all the rest.

### what is done in these docker file ?

#### core :

- configure language
- configure locals
- install debian buster (for debian core)
- install ubuntu latest version (for ubuntu core)

#### syslog-ng

- create a syslog-ng server

#### mysql

- create a mysql server (version 8)
- send log with syslog-ng 

# Usage

go in the desired docker image path and launch :

docker build .

# sources, ref and documentation 

- https://docs.docker.com/engine/reference/builder/
- https://github.com/dockerbase/ubuntu
- https://github.com/mguentner/docker-runit-test/blob/master/your_app/run
