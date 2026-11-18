#!/usr/bin/env ksh
# shellarena: function calls

function step {
    (( x = ($1 * 48271) % 2147483647 ))
}

i=0
x=1
checksum=0

while (( i < 5000 )); do
    step "$x"
    (( checksum = (checksum + x) % 2147483647 ))
    (( i++ ))
done

print "func $checksum"
