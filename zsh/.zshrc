
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

source ~//repos/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
