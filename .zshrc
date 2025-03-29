export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="clean"
HIST_STAMPS="yyyy-mm-dd"
plugins=()
source $ZSH/oh-my-zsh.sh

[[ -f ~/.my_aliases ]] && source ~/.my_aliases
[[ -f ~/.my_funs ]] && source ~/.my_funs

export SSH_AUTH_SOCK=/run/user/1000/keyring/ssh
eval $(ssh-agent -s) > /dev/null
