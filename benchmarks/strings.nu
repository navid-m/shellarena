# shellarena: string building
# nushell: run with `nu --no-config-file strings.nu`

mut rounds = 10000
mut i = 0
mut checksum = 0
mut s = ""

while $i < $rounds {
    $s = $s + "blood"
    mut len = ($s | str length)
    $checksum = $checksum + $len
    if $len >= 500 {
        $s = ""
    }
    $i = $i + 1
}

print $"strings ($checksum)"
