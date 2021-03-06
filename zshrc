export ZSH="/home/michael/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git kubectl fast-syntax-highlighting terraform) 

source $ZSH/oh-my-zsh.sh

# Load aliases and shortcuts
source "$HOME/.config/shell/aliasrc"
source "$HOME/.config/shell/shortcutrc"

# Kube-PS1
source ~/Extras/Git/kube-ps1/kube-ps1.sh
PROMPT='$(kube_ps1)'$PROMPT

# Autocompletion
## Azure Cli
source /etc/bash_completion.d/azure-cli
## Kubecolor
compdef kubecolor=kubectl
##

rangercd () {
    tmp="$(mktemp)"
    ranger --choosedir="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'rangercd\n'
