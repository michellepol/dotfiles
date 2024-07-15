# We have to put this line here, due to the fact that
# the async plugin performs a test run of the zpty and
# this leads to a command line flicker.
source ${ZSH_CUSTOM}/plugins/zsh-async/async.zsh

# Enable Powerlevel10k instant prompt.(speed up zsh)
# Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source oh-my-zsh framework
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Source p10k theme
source ${ZSH_CUSTOM}/themes/powerlevel10k-prompt-arc/arc.zsh

# Source p10k settings
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ALIASES
alias ya="~/arc/ya"
alias arc-cd="cd ~/arcadia/taxi/uservices"
alias tt="ya tool tt"
alias ssh-dev="ssh -o StrictHostKeyChecking=no michelle-dev.sas.yp-c.yandex.net"
