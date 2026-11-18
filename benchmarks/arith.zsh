#!/usr/bin/env zsh
# shellarena: integer arithmetic (linear congruential generator)

i=0
x=1
checksum=0

while (( i < 10000 )); do
    x=$(( (x * 48271) % 2147483647 ))
    checksum=$(( (checksum + x) % 2147483647 ))
    (( i++ ))
done

printf 'arith %s\n' "$checksum"
