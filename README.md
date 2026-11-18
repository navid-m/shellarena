# shellarena

A reproducible cross-shell performance suite written in Blood. It runs the same
small programs through every installed shell, measures them with
[hyperfine](https://github.com/sharkdp/hyperfine), checks that they all produce
the same checksum, and generates a self-contained HTML report with rankings,
speedup factors, a head-to-head view, and a relative-speed matrix.

## Requirements

- Blood (`blood` from `PATH`, or set `BLOOD_BIN`)
- hyperfine
- Any of these shells that you want to compare:
  `ksh` (ksh93), `zsh`, `fish`, `elvish`, `blood`, `nushell`, `bash`, `dash`
- A POSIX `sh` for command lookup, plus `date`, `hostname`, and `uname` for the
  report metadata
