plugins=(git deno adb ag autojump docker docker-compose docker-machine emoji encode64 fzf github golang history kubectl microk8s minikube man nmap node npm nvm pip systemd vim-interaction vi-mode virtualenv vscode zsh-interactive-cd zsh-navigation-tools yarn zsh-autosuggestions rsync ruby rust rvm copyfile dirhistory)

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# [[ ! -f $ZSH_CUSTOM/p10k.zsh ]] || source $ZSH_CUSTOM/p10k.zsh
source /usr/share/autojump/autojump.zsh
