# Important environment variables
export HOMEBREW_GITHUB_API_TOKEN="$GITHUB_API_TOKEN"
export XDG_CONFIG_HOME="$HOME/projects/config"

# Important to update this per repo.
export CURRENT_OS="OS X"

# Fix the python path as python is installed by brew
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Get the brewed sqlite into the path.
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# Get the goodies from gnu coreutils
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# My handy alias
alias vim='mvim -v'
alias python='python2'
alias pip='pip2'
alias rmpy='find . -name "*pyc" -exec rm -rf {} \;'
alias tvnamer='tvnamer -c $HOME/projects/config/tvnamer.json'
alias subliminal="subliminal download -l en"
alias ls='gls --color=auto'
alias ll='ls -al'

# source the mighty virtualenvwrapper
export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME="$HOME/projects"
source "/usr/local/bin/virtualenvwrapper.sh"

# Get dircolors
eval `dircolors ~/.dircolors/dircolors.ansi-dark`
