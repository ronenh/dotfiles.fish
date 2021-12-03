#!/usr/bin/env fish
if status is-interactive
    if command -qs gvm
        echo "gvm use go1.17.4" > ~/.config/fish/conf.d/golang.fish
    end
end
