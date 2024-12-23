if status is-interactive
	# Commands to run in interactive sessions can go here
	bind -M insert \cf accept-autosuggestion
	alias eng="aserto_env eng"
	alias prod="aserto_env prod"

	for l in (cat $XDG_DATA_HOME/colorscheme.conf | head -2)
		set -x (string split = (string replace 'env ' '' $l))
	end
end

source ~/.secrets
nvm use default
# load_nvm > /dev/stderr
# rvm default
