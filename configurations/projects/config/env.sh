# Important environment variables
export HOMEBREW_GITHUB_API_TOKEN="$GITHUB_API_TOKEN"
export XDG_CONFIG_HOME="$HOME/projects/config"

# Important to update this per repo.
export CURRENT_OS="OS X"

# Bash completion from `brew`
# brew install bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Search - Faster than your thoughts
# `brew` install fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Fix the python path as python is installed by brew
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Get the brewed sqlite into the path.
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# Get the goodies from gnu coreutils
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Switching back to git-prompt
GIT_PROMPT_FETCH_REMOTE_STATUS=0 # Avoid fetching remote status
GIT_PROMPT_SHOW_UPSTREAM=0 # Don't display upstream tracking branch
GIT_SHOW_UNTRACKED_FILES=no # Don't count untracked files (no, normal, all)
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

# My handy alias
alias vim='mvim -v'
alias python='python2'
alias pip='pip2'
alias rmpy='find . -name "*pyc" -exec rm -rf {} \;'
alias tvnamer='tvnamer -c $HOME/projects/config/tvnamer.json'
alias subliminal="subliminal download -l en"
alias ls='gls --color=auto'
alias ll='ls -lhA'
alias venv='vim ~/projects/config/env.sh'

# source the mighty virtualenvwrapper
export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME="$HOME/projects"
source "/usr/local/bin/virtualenvwrapper.sh"

if [ -n "$VIRTYAL_ENV" ]; then
    source $VIRTUAL_ENV/bin/activiate;
    source $HOME/.virtualenv/postactivate;
fi
