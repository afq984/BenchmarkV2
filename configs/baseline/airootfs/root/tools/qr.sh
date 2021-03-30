#!/bin/bash
echo "https://benchmark.afq984.org/submit/$(tools/result.sh | base64 | tr /+ _-)" | qrencode -t ANSIUTF8
