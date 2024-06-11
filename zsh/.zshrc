# Enable Powerlevel10k instant prompt.(speed up zsh)
# Should stay close to the top of ~/.zshrc.
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
