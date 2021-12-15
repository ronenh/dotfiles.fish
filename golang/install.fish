#!/usr/bin/env fish
if command -qs gvm
    echo "gvm use go1.17.4" > ~/.config/fish/conf.d/golang.fish
    echo "go env -w GOPRIVATE=github.com/aserto-dev" >> ~/.config/fish/conf.d/golang.fish
end


