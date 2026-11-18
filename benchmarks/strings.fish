#!/usr/bin/env fish
# shellarena: string building

set rounds 10000
set i 0
set checksum 0
set s ""

while test $i -lt $rounds
    set s "$s"blood
    set len (string length -- "$s")
    set checksum (math -s0 "$checksum + $len")
    if test $len -ge 500
        set s ""
    end
    set i (math -s0 "$i + 1")
end

echo "strings $checksum"
