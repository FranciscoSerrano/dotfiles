eval "$(starship init zsh)"
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"

### QuickScript added this python bin path for 'quick' to be global ###
export PATH=/Users/franciscoserrano/Library/Python/3.10/bin:$PATH
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"

#### Added by green-restore install-tools
autoload -Uz compinit && compinit
####

fpath=(/Users/franciscoserrano/.houston_autocomplete $fpath)
autoload -U compinit
compinit
