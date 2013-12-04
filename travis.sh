#!/bin/bash

# Exit on first error
set -e

# Kill background processes on exit
trap 'kill $(jobs -p)' SIGINT SIGTERM EXIT

# Start docker daemon
docker -d &
sleep 1

# Build portefaix containers
echo "Build Common Lisp container"
sudo docker build -t nlamirault/commonlisp commonlisp

echo "Build Erlang container"
sudo docker build -t nlamirault/erlang erlang

echo "Build GO container"
sudo docker build -t nlamirault/go go

echo "Build Haskell container"
sudo docker build -t nlamirault/haskell haskell

echo "Build OCaml container"
sudo docker build -t nlamirault/ocaml ocaml

echo "Build Python container"
sudo docker build -t nlamirault/python python
