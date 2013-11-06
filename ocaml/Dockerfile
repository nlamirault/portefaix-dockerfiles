#
# OCaml container.
# Version: 0.1.0
#

# use the ubuntu base image provided by dotCloud
FROM ubuntu:latest
MAINTAINER Nicolas Lamirault <nicolas.lamirault@gmail.com>

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu raring main restricted universe multiverse" > /etc/apt/sources.list

# Install OCaml
RUN apt-get install ocaml ocaml-findlib

# Install OPam
RUN add-apt-repository ppa:avsm/ppa
RUN apt-get update
RUN apt-get install opam

# Install Oasis
RUN apt-get install oasis

