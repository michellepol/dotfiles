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

# Source p10k theme
if [[ OWNER = "yandex" ]]
then
    source ${ZSH_CUSTOM}/themes/powerlevel10k-prompt-arc/arc.zsh
else
    source ${ZSH_CUSTOM}/themes/powerlevel10k/powerlevel10k.zsh-theme
fi

export PATH="/Users/michellepol/arcadia:$PATH"
export PATH=$PATH:"$(ya tool go --print-toolchain-path)/bin"
alias gopls="$(ya tool gopls --print-toolchain-path)/gopls"
alias arc-cd="cd ~/arcadia/taxi/uservices"
alias tt="ya tool tt"
alias ssh-dev="ssh -o StrictHostKeyChecking=no michelle-dev.sas.yp-c.yandex.net"
alias ue=ue4
alias byedpi="ciadpi --debug -s1 -q1 -Y -Ar -s5 -o1+s -At -f-1 -r1+s -As -s1 -o1 +s -s-1 -An -p 8088 -i 127.0.0.1"

export EDITOR="nvim"

# activate unreal engine venv
source ~/envs/ue/bin/activate

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/michellepol/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)


alias vspy="ya ide vscode --py3 . -P ~/vscode/python/${PWD##*/}"
alias vscpp="ya ide vscode --cpp . -P ~/vscode/cpp/${PWD##*/}"
