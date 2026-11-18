# shellarena: integer arithmetic (linear congruential generator)
# nushell: run with `nu --no-config-file arith.nu`

mut rounds = 10000
mut i = 0
mut x = 1
mut checksum = 0

while $i < $rounds {
    $x = ($x * 48271) mod 2147483647
    $checksum = ($checksum + $x) mod 2147483647
    $i = $i + 1
}

print $"arith ($checksum)"
