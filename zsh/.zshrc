# -- theme -- #

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.oh-my-zsh/custom/plugins/zsh-async/async.zsh

fpath+=~/.zfunc

plugins=(
  bundler
  dotenv
  macos
  rake
  rbenv
  ruby
)

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

source ~/Dev/repos/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# source ${ZSH_CUSTOM}/themes/powerlevel10k-prompt-arc.arcadia/arc.zsh
source ${ZSH_CUSTOM}/themes/powerlevel10k-prompt-arc/arc.zsh

# -- PATH -- #
export PATH=$PATH:/usr/local/bin/skotty:/Users/michellepol/Library/Python/3.7/bin
### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/michellepol/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# -- ALIAS -- #
alias ssh-dev='ssh michelle-dev.sas.yp-c.yandex.net'
alias arc-cd='cd ~/arcadia/taxi/uservices'
alias ya='~/arcadia/ya'
