# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/serrano/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
# else
#    if [ -f "/Users/serrano/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/Users/serrano/opt/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/serrano/opt/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<



source $HOME/.aliases

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