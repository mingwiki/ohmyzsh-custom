export PATH=$HOME/bin:/usr/local/bin:/snap/bin:$PATH
export NVM_DIR="$HOME/.nvm"
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
export N_NODE_MIRROR='https://mirrors.ustc.edu.cn/node/'
export DOCKER_CLIENT_TIMEOUT=120
export COMPOSE_HTTP_TIMEOUT=120
export ZSH_THEME="powerlevel10k/powerlevel10k"
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"
export HISTFILE="$ZSH_CUSTOM/zsh_history"
plugins=(git deno adb ag autojump docker docker-compose docker-machine emoji encode64 fzf github golang history kubectl microk8s minikube man nmap node npm nvm pip systemd vim-interaction vi-mode virtualenv vscode zsh-interactive-cd zsh-navigation-tools yarn zsh-autosuggestions rsync ruby rust rvm copyfile)
HISTSIZE=2000
SAVEHIST=2000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.
alias sp='export all_proxy=socks5://10.10.10.10:10800'
alias unsp='unset all_proxy'
alias ytc='yt-dlp --proxy socks5://10.10.10.10:10800 --cookies=/root/cookie.txt --verbose --no-check-certificates'
alias yt='yt-dlp --proxy socks5://10.10.10.10:10800 --verbose --no-check-certificates'
alias cl='clear'
alias top='htop'
alias du='ncdu'
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f $ZSH_CUSTOM/p10k.zsh ]] || source $ZSH_CUSTOM/p10k.zsh
source /usr/share/autojump/autojump.zsh
