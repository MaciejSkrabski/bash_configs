if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export CUDA_DISABLE_PERF_BOOST=1
export DIFFPROG='nvim -d'
export EDITOR='nvim'
export GRIM_DEFAULT_DIR="$HOME/Pics/Sshots/"
export LANG=pl
export LC_ALL=pl_PL.UTF-8
export NVM_DIR="$HOME/.nvm"
export PATH="$HOME/.local/bin:$PATH"
export SSH_ASKPASS="/usr/bin/ksshaskpass"
export SSH_ASKPASS_REQUIRE=prefer
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export VISUAL=nvim
export ZSH="$HOME/.oh-my-zsh"
