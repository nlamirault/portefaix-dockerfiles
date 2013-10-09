#
# Common lisp container.
# Version: 0.1.0
#

# use the ubuntu base image provided by dotCloud
FROM ubuntu:latest
MAINTAINER Nicolas Lamirault <nicolas.lamirault@gmail.com>

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu raring main restricted universe multiverse" > /etc/apt/sources.list
RUN apt-get update

# install the Common Lisp environment
RUN apt-get install -y sbcl

# install Quicklisp
RUN apt-get install -y curl
RUN mkdir -p /opt/apps/commonlisp/
RUN cd /opt/apps/commonlisp/ && curl -O http://beta.quicklisp.org/quicklisp.lisp
