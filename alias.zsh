alias sp='export all_proxy=socks5://10.10.10.10:20000'
alias unsp='unset all_proxy'
alias yt='hup yt-dlp --proxy socks5://10.10.10.10:20000 --verbose --no-check-certificates'
alias ytc='yt --cookies=/root/cookie.txt'
alias cl='clear'
alias gl='glances'
alias nsync='hup rsync'
alias sz='source ~/.zshrc'
hup() {
  nohup "$@" &>>"$1".log &
  tail -F "$1".log
}
