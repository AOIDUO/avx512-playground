#!/bin/bash
IFS=$'\n'
bold=$(tput bold)
normal=$(tput sgr0)

# note: must enable -O3 flag to have vectorization 
# native -mno-avx
targets=('clang++-15 -O3 -march=native' 
         'clang++-15 -O3 -march=native -mno-avx -mno-sse' )


for cc in ${targets[@]}
do
    echo ${bold}$cc${normal}
    bash -c "$cc ./src/matrix-dynamic-size.cpp -std=c++11 -isystem benchmark/include  -L benchmark/build/src -l benchmark -lpthread -o /tmp/x" 
    # bash -c "$cc ./bench.cpp -std=c++11 -isystem benchmark/include  -L benchmark/build/src -l benchmark -lpthread -o /tmp/x" 
    echo ========================================================
    cc_t=`echo "$cc" | sed 's/ //g'`
    objdump -d /tmp/x > $cc_t".asm"
    ./scripts/find-simd.sh $cc_t".asm"
    echo ========================================================
    /tmp/x 
    echo
done