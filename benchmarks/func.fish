#!/usr/bin/env fish
# shellarena: function calls

function step
    math -s0 "($argv[1] * 48271) % 2147483647"
end

set rounds 5000
set i 0
set x 1
set checksum 0

while test $i -lt $rounds
    set x (step $x)
    set checksum (math -s0 "($checksum + $x) % 2147483647")
    set i (math -s0 "$i + 1")
end

echo "func $checksum"
