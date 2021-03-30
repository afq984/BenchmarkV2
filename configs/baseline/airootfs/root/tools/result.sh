#!/bin/bash
printf '%s%s,%s\n' "`tools/hwmodel --csv`" "`cat /benchmark/gcctime `" "`cat /benchmark/clangtime`"
