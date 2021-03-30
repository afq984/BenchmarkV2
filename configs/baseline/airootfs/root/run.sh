#!/bin/bash
set -ex
useradd -m benchmark -d /benchmark
runuser -l benchmark -c /buildgcc.sh
runuser -l benchmark -c /buildclang.sh
tools/result.sh
tools/qr.sh
