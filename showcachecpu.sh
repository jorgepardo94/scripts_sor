#!/bin/bash
cachecpu=$(cat /proc/cpuinfo | grep "cache size" | cut -d ":" -f2)
procesador=$(cat /proc/cpuinfo | grep "model name" | cut -d ":" -f2)
fpu=$(cat /proc/cpuinfo | grep -P "^fpu\t" | cut -d ":" -f2)
echo "El procesador $procesador tiene una cache de $cachecpu"
if [ "$fpu" == " yes" ]; then
echo si que tiene fpu
fi

