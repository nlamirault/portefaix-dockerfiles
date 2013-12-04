#!/bin/bash

# Exit on first error
set -e

# Kill background processes on exit
trap 'kill $(jobs -p)' SIGINT SIGTERM EXIT

# Start docker daemon
docker -d &
sleep 1

PORTEFAIX_HOME=`pwd`

echo "---------------------"
echo "----- Portefaix -----"
echo "---------------------"

# Build portefaix containers
echo "--- Common Lisp container ---"
cd ./commonslisp
docker build -t nlamirault/commonlisp . 
cd $PORTEFAIX_HOME

echo "--- Erlang container ---"
cd ./erlang
docker build -t nlamirault/erlang
cd $PORTEFAIX_HOME

echo "--- GO container ---"
cd go
docker build -t nlamirault/go .
cd $PORTEFAIX_HOME

echo "--- Haskell container ---"
cd haskell
docker build -t nlamirault/haskell .
cd $PORTEFAIX_HOME

echo "--- OCaml container ---"
cd ocaml
docker build -t nlamirault/ocaml .
cd $PORTEFAIX_HOME

echo "--- Python container ---"
cd python
docker build -t nlamirault/python .
cd $PORTEFAIX_HOME

echo "--- Portefaix containers build done. ---"
