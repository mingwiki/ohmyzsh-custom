export PATH=$HOME/bin:/usr/local/bin:$PATH
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.oh-my-zsh/custom/zsh_history

alias sp='export all_proxy=socks5://10.10.10.10:10800'
alias unsp='unset all_proxy'
alias yt='yt-dlp'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-vim-mode autojump zsh-autosuggestions)
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"
[[ ! -f ~/.oh-my-zsh/custom/.p10k.zsh ]] || source ~/.oh-my-zsh/custom/.p10k.zsh
# Created by mirror-config-china
export IOJS_ORG_MIRROR=https://npm.taobao.org/mirrors/iojs
export NODIST_IOJS_MIRROR=https://npm.taobao.org/mirrors/iojs
export NVM_IOJS_ORG_MIRROR=https://npm.taobao.org/mirrors/iojs
export NVMW_IOJS_ORG_MIRROR=https://npm.taobao.org/mirrors/iojs
export NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
export NODIST_NODE_MIRROR=https://npm.taobao.org/mirrors/node
export NODE_MIRROR='https://mirrors.ustc.edu.cn/node/'
export NVM_NODEJS_ORG_MIRROR='https://mirrors.ustc.edu.cn/node/'
export NVMW_NODEJS_ORG_MIRROR='https://mirrors.ustc.edu.cn/node/'
export NVMW_NPM_MIRROR=https://npm.taobao.org/mirrors/npm
# End of mirror-config-china
export DOCKER_CLIENT_TIMEOUT=120
export COMPOSE_HTTP_TIMEOUT=120
