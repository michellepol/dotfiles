# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source oh-my-zsh framework
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
# Source p10k theme
source ${ZSH_CUSTOM}/themes/powerlevel10k/powerlevel10k.zsh-theme
# Source p10k settings
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias ue=ue4
alias byedpi="/usr/local/bin/ciadpi -s1 -q1 -Y -Ar -s5 -o1+s -At -f-1 -r1+s -As -s1 -o1 +s -s-1 -An -p 8088 -i 127.0.0.1"

export EDITOR="nvim"
export PATH=$PATH:~/go/bin

# activate unreal engine venv
source ~/envs/ue/bin/activate
