ZSH_THEME="bureau"
HIST_STAMPS="yyyy-mm-dd"
plugins=(gpg-agent)
source $ZSH/oh-my-zsh.sh

[[ -f ~/.my_aliases ]] && source ~/.my_aliases
[[ -f ~/.my_funs ]] && source ~/.my_funs

#eval $(ssh-agent -s) > /dev/null

autoload -Uz zmv
