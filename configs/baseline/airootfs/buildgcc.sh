#!/bin/sh
set -eux
bsdtar xf /gcc.tar.zst
mkdir gccbuild
cd gccbuild
~/gcc/configure --enable-languages=c,c++,fortran --disable-multilib --disable-bootstrap
cd ..
\time -ogcctime -f%e,%U,%S make -C gccbuild -j$(nproc) > /dev/null
rm -rf gcc gccbuild
cat gcctime
