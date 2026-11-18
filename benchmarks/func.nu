# shellarena: function calls
# nushell: run with `nu --no-config-file func.nu`

def step [n: int] {
    ($n * 48271) mod 2147483647
}

mut rounds = 5000
mut i = 0
mut x = 1
mut checksum = 0

while $i < $rounds {
    $x = (step $x)
    $checksum = ($checksum + $x) mod 2147483647
    $i = $i + 1
}

print $"func ($checksum)"
