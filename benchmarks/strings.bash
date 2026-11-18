#!/usr/bin/env bash
# shellarena: string building

i=0
checksum=0
s=""

while (( i < 10000 )); do
    s="$s""blood"
    checksum=$(( checksum + ${#s} ))
    if (( ${#s} >= 500 )); then
        s=""
    fi
    (( i++ ))
done

printf 'strings %s\n' "$checksum"
