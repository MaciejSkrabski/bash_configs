ZSH_THEME=`cat ~/.zsh_theme`
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
HIST_STAMPS="yyyy-mm-dd"

# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)
plugins=()

source $ZSH/oh-my-zsh.sh

if [ -f ~/.my_aliases ]; then
    source ~/.my_aliases
fi

# read my shell functions
if [ -f ~/.my_funs ]; then
    source ~/.my_funs
fi

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval $(ssh-agent -s) > /dev/null

autoload -Uz zmv
