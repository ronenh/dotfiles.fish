if status is-interactive
    # Commands to run in interactive sessions can go here
    bind -M insert \cf accept-autosuggestion
    alias eng="aserto_env eng"
    alias prod="aserto_env prod"
end

source ~/.secrets
load_nvm > /dev/stderr
eval ($XDG_CONFIG_HOME/kitty/colors dark)
# rvm default
