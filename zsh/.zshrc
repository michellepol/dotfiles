# Enable Powerlevel10k instant prompt.(speed up zsh)
# Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# add arc autocompletion
fpath+=~/.zfunc

# We have to put this line here, due to the fact that
# the async plugin performs a test run of the zpty and
# this leads to a command line flicker.
source ~/.oh-my-zsh/custom/plugins/zsh-async/async.zsh

source ~/Dev/envs/dev/bin/activate

# Source oh-my-zsh framework
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/oh-my-zsh.sh

# Source p10k settings
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Source p10k theme
source ${ZSH_CUSTOM}/themes/powerlevel10k-prompt-arc/arc.zsh

# Aliases
alias ya='~/arcadia/ya'
alias arc-cd="cd ~/arcadia/taxi/uservices"
alias tt="ya tool tt --yt-proxy=localhost:8000"
alias tt-test="ya tool tt test --yt-proxy=localhost:8000"
alias ssh-dev="ssh -o StrictHostKeyChecking=no michelle-dev.sas.yp-c.yandex.net"
alias clangd18="~/Dev/bin/clangd18/bin/clangd"
alias python="/usr/bin/python3"

#export PATH="/Users/michellepol/Library/Python/3.9/bin:$PATH"
#export PATH="/usr/bin/python3:$PATH"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/michellepol/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
