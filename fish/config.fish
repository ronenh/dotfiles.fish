if status is-interactive
    # Commands to run in interactive sessions can go here
    bind -M insert \cf accept-autosuggestion
    alias eng="aserto_env eng"
    alias prod="aserto_env prod"
end

source ~/.secrets
rvm default
