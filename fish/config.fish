if status is-interactive
    # Commands to run in interactive sessions can go here
    bind -M insert \cf accept-autosuggestion
end

source ~/.secrets
fish_add_path /opt/homebrew/opt/postgresql@12/bin
