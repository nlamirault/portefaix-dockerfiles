#
# Erlang container.
# Version: 0.1.0
#

# use the ubuntu base image provided by dotCloud
FROM ubuntu:latest
MAINTAINER Nicolas Lamirault <nicolas.lamirault@gmail.com>

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu raring main restricted universe multiverse" > /etc/apt/sources.list

# Add Erlang Solutions repository
RUN echo "deb http://packages.erlang-solutions.com/debian raring contrib" >> /etc/apt/sources.list

# Add Key
RUN wget http://packages.erlang-solutions.com/debian/erlang_solutions.asc
RUN apt-key add erlang_solutions.asc

# Update package list
RUN apt-get update

# install the Erland environment
RUN apt-get install -y erlang erlang-doc erlang-manpages erlang-mode

