#!/bin/sh
set -eux

golangci-lint "$@" | sed -E 's#(.*):([0-9]*):([0-9]*): (.*)#::error file=\1,line=\2,col=\3::\4#g'
