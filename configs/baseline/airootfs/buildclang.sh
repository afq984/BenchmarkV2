#!/bin/bash
set -eux
bsdtar xf /llvm.tar.zst
mkdir llvmbuild
cd llvmbuild
cmake -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang -DCMAKE_BUILD_TYPE=Release -GNinja -DLLVM_TARGETS_TO_BUILD=X86 ~/llvm
cd ..
\time -oclangtime -f%e,%U,%S ninja -C llvmbuild
rm -rf llvm llvmbuild
cat clangtime
