#!/bin/bash

# Exit on first error
set -e

PORTEFAIX_HOME=$(dirname "$0")
echo $PORTEFAIX_HOME

# Kill background processes on exit
trap 'kill $(jobs -p)' SIGINT SIGTERM EXIT

# Start docker daemon
docker -d &
sleep 1

echo "---------------------"
echo "----- Portefaix -----"
echo "---------------------"
echo " "

# Build portefaix containers
echo "--- Common Lisp container ---"
cd $PORTEFAIX_HOME
docker build -t nlamirault/commonlisp commonlisp
#docker run -i -t nlamirault/commonlisp /usr/bin/sbcl --eval "(format t \"Hello Portefaix\")" --quit --non-interactive

echo "--- Erlang container ---"
cd $PORTEFAIX_HOME
#docker build -t nlamirault/erlang erlang

echo "--- GO container ---"
cd $PORTEFAIX_HOME/go
docker build -t nlamirault/go .

echo "--- Haskell container ---"
cd $PORTEFAIX_HOME/haskell
#docker build -t nlamirault/haskell .

echo "--- OCaml container ---"
cd $PORTEFAIX_HOME/ocaml
#docker build -t nlamirault/ocaml .

echo "--- Python container ---"
cd $PORTEFAIX_HOME/python
#docker build -t nlamirault/python .

echo "--- Portefaix containers build done. ---"
