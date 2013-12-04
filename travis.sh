#!/bin/bash

# Exit on first error
set -e

# Kill background processes on exit
trap 'kill $(jobs -p)' SIGINT SIGTERM EXIT

# Start docker daemon
docker -d &
sleep 1

PORTEFAIX_HOME=`$(dirname "$0")`

echo "---------------------"
echo "----- Portefaix -----"
echo "---------------------"

# Build portefaix containers
echo "--- Common Lisp container ---"
cd $PORTEFAIX_HOME/commonlisp
docker build -t nlamirault/commonlisp . 
cd $PORTEFAIX_HOME

echo "--- Erlang container ---"
cd $PORTEFAIX_HOME/erlang
docker build -t nlamirault/erlang
cd $PORTEFAIX_HOME

echo "--- GO container ---"
cd $PORTEFAIX_HOME/go
docker build -t nlamirault/go .
cd $PORTEFAIX_HOME

echo "--- Haskell container ---"
cd $PORTEFAIX_HOME/haskell
docker build -t nlamirault/haskell .
cd $PORTEFAIX_HOME

echo "--- OCaml container ---"
cd $PORTEFAIX_HOME/ocaml
docker build -t nlamirault/ocaml .
cd $PORTEFAIX_HOME

echo "--- Python container ---"
cd $PORTEFAIX_HOME/python
docker build -t nlamirault/python .
cd $PORTEFAIX_HOME

echo "--- Portefaix containers build done. ---"
