# First source .profile to load api tokens
source "$HOME/.profile"
# Source my awesome list of aliases
source "$HOME/projects/config/env.sh"

# Bash completion from `brew`
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# Search - Faster than your thoughts. 
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Bash prompt with git features
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Activate a virtualenv if already present
if [ -n "$VIRTUAL_ENV" ]; then
    source $VIRTUAL_ENV/bin/activate;
    source $HOME/.virtualenvs/postactivate;
fi
