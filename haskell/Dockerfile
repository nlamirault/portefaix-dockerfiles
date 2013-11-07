#
# Haskell container.
# Version: 0.1.0
#

# use the ubuntu base image provided by dotCloud
FROM ubuntu:latest
MAINTAINER Nicolas Lamirault <nicolas.lamirault@gmail.com>

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu raring main restricted universe multiverse" > /etc/apt/sources.list
RUN apt-get update

# install the Haskell environment
RUN apt-get install -y ghc

# install Cabal
RUN apt-get -u install cabal-install

# Update Cabal package list
#RUN cabal update

# Upgrade cabal-install
#RUN cabal install cabal cabal-install

