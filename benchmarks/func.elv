#!/usr/bin/env elvish
# shellarena: function calls

fn step {|n|
    put (% (* $n 48271) 2147483647)
}

var rounds = 5000
var i = 0
var x = 1
var checksum = 0

while (< $i $rounds) {
    set x = (step $x)
    set checksum = (% (+ $checksum $x) 2147483647)
    set i = (+ $i 1)
}

echo "func "$checksum
