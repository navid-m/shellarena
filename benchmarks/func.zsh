#!/usr/bin/env zsh
# shellarena: function calls

step() {
    printf '%s\n' "$(( ($1 * 48271) % 2147483647 ))"
}

i=0
x=1
checksum=0

while (( i < 5000 )); do
    x=$(step "$x")
    checksum=$(( (checksum + x) % 2147483647 ))
    (( i++ ))
done

printf 'func %s\n' "$checksum"
