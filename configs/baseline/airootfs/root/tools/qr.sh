#!/bin/bash
echo "https://benchmark.afq984.org/submit?result=$(tools/result.sh | base64)" | qrencode -t ANSIUTF8
