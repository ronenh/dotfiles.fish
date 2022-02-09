#!/usr/bin/env fish
abbr -a vim 'nvim'

# Use nvim as man pager
set -Ux MANPAGER "/bin/sh -c \"col -bx | nvim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
