all: build

build-commonlisp:
	sudo docker build -t nlamirault/commonlisp commonlisp

build-erlang:
	sudo docker build -t nlamirault/erlang erlang

build-go:
	sudo docker build -t nlamirault/go go

build-haskell:
	sudo docker build -t nlamirault/haskell haskell

build-ocaml:
	sudo docker build -t nlamirault/ocaml ocaml

build-python:
	sudo docker build -t nlamirault/python python

build: build-commonlisp build-erlang build-go build-haskell build-ocaml build-python
