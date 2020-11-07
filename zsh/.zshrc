# Enable direnv support
eval "$(direnv hook zsh)"

# Go related envs
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$(go env GOPATH)/bin
export GOPRIVATE="github.com/Jimdo"

# Use this for autocompletions
autoload -Uz compinit && compinit

# Favourite aliases
alias dc="docker-compose"
alias do="doctl"
alias k="kubectl"

# Starship prompt
# Must be at the end of zshrc
eval "$(starship init zsh)"

