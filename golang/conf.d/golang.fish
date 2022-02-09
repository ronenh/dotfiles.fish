if type -s gvm > /dev/null
    gvm use go1.17.4 > /dev/null
end

go env -w GOPRIVATE=github.com/aserto-dev
