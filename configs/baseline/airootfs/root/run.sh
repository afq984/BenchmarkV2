#!/bin/bash
set -ex
useradd -m benchmark -d /benchmark
runuser -l benchmark -c /buildgcc.sh
runuser -l benchmark -c /buildclang.sh
set +x
tools/result.sh
echo
tools/qr.sh
