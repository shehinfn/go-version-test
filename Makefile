# Author Rahul V R <rahul.vr@accubits.com>
PROJECTNAME=$(shell basename "$(PWD)")

GOBASE=$(shell pwd)
GOBIN=$(GOBASE)/src/bin
GO=$(shell which go)

install:
	go mod download

run:
	go run  ./src/main.go || exit
	./src/bin/$(PROJECTNAME)
