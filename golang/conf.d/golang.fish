if type -s gvm > /dev/null
    gvm use go1.19.3 > /dev/null
end

go env -w GOPRIVATE=github.com/aserto-dev
