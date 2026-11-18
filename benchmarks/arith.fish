#!/usr/bin/env fish
# shellarena: integer arithmetic (linear congruential generator)

set rounds 10000
set i 0
set x 1
set checksum 0

while test $i -lt $rounds
    set x (math -s0 "($x * 48271) % 2147483647")
    set checksum (math -s0 "($checksum + $x) % 2147483647")
    set i (math -s0 "$i + 1")
end

echo "arith $checksum"
