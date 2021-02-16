export ZSH="/home/michael/.oh-my-zsh"
ZSH_THEME="robbyrussell"
# :D
plugins=(git kubectl fast-syntax-highlighting terraform) 

source $ZSH/oh-my-zsh.sh

# Aliases
source $HOME/.config/aliases

# Kube-PS1
source ~/Extras/Git/kube-ps1/kube-ps1.sh
PROMPT='$(kube_ps1)'$PROMPT

# Autocompletion
## Azure Cli
source /etc/bash_completion.d/azure-cli
## Kubecolor
compdef kubecolor=kubectl
##
