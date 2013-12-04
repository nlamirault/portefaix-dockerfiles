#
# OCaml container.
# Version: 0.1.0
#

# use the ubuntu base image provided by dotCloud
FROM ubuntu:latest
MAINTAINER Nicolas Lamirault <nicolas.lamirault@gmail.com>

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu raring main restricted universe multiverse" > /etc/apt/sources.list
RUN apt-get update

# install tools
RUN apt-get install -y python-software-properties software-properties-common 

# Add OPam PPA
RUN add-apt-repository ppa:avsm/ocaml41+opam11

# Update packages list
RUN apt-get update

# Install OCaml
RUN apt-get install -y ocaml opam

