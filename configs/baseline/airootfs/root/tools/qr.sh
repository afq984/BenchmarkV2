#!/bin/bash
setfont drdos8x14.psfu.gz
echo "https://benchmark.afq984.org/submit/$(tools/result.sh | base64 | tr /+ _-)" | qrencode -t ANSIUTF8
