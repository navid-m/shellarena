#!/usr/bin/env elvish
# shellarena: string building

var rounds = 10000
var i = 0
var checksum = 0
var s = ''

while (< $i $rounds) {
    set s = $s'blood'
    set checksum = (+ $checksum (count $s))
    if (>= (count $s) 500) {
        set s = ''
    }
    set i = (+ $i 1)
}

echo "strings "$checksum
