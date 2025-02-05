#!/bin/sh
set -xe

ROOT_DIR=$PWD

for d in */ ; do
	cd $d

	go mod download
	go test ./... -cover -race
	go vet ./...

	cd $ROOT_DIR
done
