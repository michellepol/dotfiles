# We have to put this line here, due to the fact that
# the async plugin performs a test run of the zpty and
# this leads to a command line flicker.
source ~/.oh-my-zsh/custom/plugins/zsh-async/async.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# add arc autocompletion
fpath+=~/.zfunc

# Must be before enabling zsh
export ZSH_THEME="powerlevel10k/powerlevel10k"

# Source oh-my-zsh framework
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Source p10k settings
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Source arcadia p10k theme, must be after sourcing of p10k
source ${ZSH_CUSTOM}/themes/powerlevel10k-prompt-arc/arc.zsh

alias ya='~/arcadia/ya'
alias arc-cd="cd ~/arcadia/taxi/uservices"
alias tt="ya tool tt"
alias ssh-dev="ssh -o StrictHostKeyChecking=no michelle-dev.sas.yp-c.yandex.net"
alias clangd18="~/Dev/bin/clangd18/bin/clangd"
alias python="/usr/bin/python3"

export EDITOR="nvim"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/michellepol/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
