#!/usr/bin/env elvish
# shellarena: integer arithmetic (linear congruential generator)

var rounds = 10000
var i = 0
var x = 1
var checksum = 0

while (< $i $rounds) {
    set x = (% (* $x 48271) 2147483647)
    set checksum = (% (+ $checksum $x) 2147483647)
    set i = (+ $i 1)
}

echo "arith "$checksum
