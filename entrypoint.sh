#!/bin/sh
set -eu

golangci-lint run --print-issued-lines=0 --print-linter-name=0 --color=never "$@" | sed -E 's#(.*):([0-9]*):([0-9]*): (.*)#::error file=\1,line=\2,col=\3::\4#g'
