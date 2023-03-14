alias sp='export all_proxy=socks5://10.10.10.10:20000'
alias unsp='unset all_proxy'
alias cl='clear'
alias gl='glances'
alias nsync='hup2home rsync'
alias sz='source ~/.zshrc'
alias mv='mv -iuv'
alias yt='hup yt-dlp --proxy socks5://10.10.10.10:20000 --verbose --no-check-certificates'
alias wt='watch tail -n 20'
hup() {
  nohup "$@" &>>"$1".log &
  tail -F "$1".log
}
hup2home() {
  nohup "$@" &>>$HOME/"$1".log &
  tail -F $HOME/"$1".log
}
