alias sp='export all_proxy=socks5://10.10.10.10:10800'
alias unsp='unset all_proxy'
alias ytc='yt-dlp --proxy socks5://10.10.10.10:10800 --cookies=/root/cookie.txt --verbose --no-check-certificates'
alias yt='yt-dlp --proxy socks5://10.10.10.10:10800 --verbose --no-check-certificates'
alias cl='clear'
alias gl='glances'
alias nsync='rsynclog'
alias lohup='nohuplog'

# Function to run rsync with logging
rsynclog() {
  nohup rsync "$@" >rsync.log 2>&1 &
  tail -f rsync.log
}
# Function to run a command with logging
nohuplog() {
  local logfile="${1:-nohup.out}"
  shift
  nohup "$@" >"$logfile" 2>&1 &
  tail -f "$logfile"
}
