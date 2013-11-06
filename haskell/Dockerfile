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
# RUN apt-get install -y ghc
RUN wget http://www.haskell.org/ghc/dist/7.6.3/ghc-7.6.3-src.tar.bz2
RUN tar xjvf ghc-7.6.3-src.tar.bz2
RUN cd ghc-7.6.3
RUN ./configure
RUN make
RUN make install
RUN rm ghc-7.6.3-src.tar.bz2
RUN rm -fr ghc-7.6.3

# Update Cabal package list
RUN cabal update

# Install cabal-install
RUN cabal install cabal-install

