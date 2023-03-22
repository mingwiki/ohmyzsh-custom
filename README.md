# ohmyzsh-custom

.zshrc

```sh
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$ZSH/ohmyzsh-custom
plugins=(docker docker-compose fzf nmap node npm nvm pip systemd virtualenv zsh-interactive-cd zsh-navigation-tools zsh-autosuggestions zsh-syntax-highlighting rsync)
source $ZSH/oh-my-zsh.sh
```

```shell
$ cd $ZSH
$ git clone git@github.com:mingwiki/ohmyzsh-custom.git
$ git submodule update --recursive --init
$ source $HOME/.zshrc
```
