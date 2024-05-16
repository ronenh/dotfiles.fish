#!/usr/bin/env fish

# Use nvim as man pager
set -Ux MANPAGER "/bin/sh -c \"col -bx | nvim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
