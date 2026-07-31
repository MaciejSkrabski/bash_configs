ZSH_THEME=`cat ~/.zsh_theme`
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
HIST_STAMPS="yyyy-mm-dd"

# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)
plugins=(dotenv git)

source $ZSH/oh-my-zsh.sh

if [ -f ~/.my_aliases ]; then
    source ~/.my_aliases
fi

# read my shell functions
if [ -f ~/.my_funs ]; then
    source ~/.my_funs
fi

emulate ksh -c "source ssh-find-agent.sh"
ssh-add -l >&/dev/null || ssh-find-agent -a || eval $(ssh-agent) > /dev/null

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -Uz zmv
