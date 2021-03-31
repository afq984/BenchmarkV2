#!/bin/bash
printf '%s%s,%s' "`tools/hwmodel --csv`" "`cat /benchmark/gcctime `" "`cat /benchmark/clangtime`"
