# ohmyzsh-custom

.zshrc

```sh
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$ZSH/ohmyzsh-custom
plugins=(git deno adb ag z docker docker-compose docker-machine emoji encode64 fzf github golang history kubectl microk8s minikube man nmap node npm nvm pip systemd vim-interaction vi-mode virtualenv vscode zsh-interactive-cd zsh-navigation-tools yarn zsh-autosuggestions zsh-syntax-highlighting rsync ruby rust rvm copyfile dirhistory)
source $ZSH/oh-my-zsh.sh
```

```shell
$ cd $ZSH
$ git clone git@github.com:mingwiki/ohmyzsh-custom.git
$ git submodule update --recursive --init
$ source $HOME/.zshrc
```
