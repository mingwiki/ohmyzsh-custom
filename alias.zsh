alias sp='export all_proxy=socks5://10.10.10.10:20000'
alias unsp='unset all_proxy'
alias cl='clear'
alias gl='glances'
alias nsync='hup_save_to_home rsync'
alias sz='source ~/.zshrc'
alias mv='mv -iuv'
alias yt='download_youtube'
alias ytf='download_youtube_homepage'
alias wt='watch tail -n 20'
alias setPip='pip config set global.index-url https://mirrors.ustc.edu.cn/pypi/web/simple'
alias sd='python3 launch.py --ckpt-dir=/mnt/r1/ckpt --lora-dir=/mnt/r1/lora --listen --xformers'
hup() {
  if [[ $# -eq 0 ]]; then
    echo "Error: 'nohup' requires at least one argument."
    return 1
  else
    nohup "$@" &>>"$1".log &
    tail -F "$1".log
  fi
}
hup_save_to_home() {
  if [[ $# -eq 0 ]]; then
    echo "Error: 'nohup' requires at least one argument."
    return 1
  else
    nohup "$@" &>>$HOME/"$1".log &
    tail -F $HOME/"$1".log
  fi
}
download_youtube() {
  if [[ $# -eq 0 ]]; then
    echo "Error: 'download_youtube' missing url"
    return 1
  else
    hup yt-dlp --proxy socks5://10.10.10.10:20000 --verbose --no-check-certificates $@
  fi
}
download_youtube_homepage() {
  if [[ $# -eq 0 ]]; then
    echo "Error: 'download_youtube_homepage' missing batch file"
    return 1
  else
    yt --yes-playlist --download-archive archive.txt -o "%(playlist)s/%(title)s.%(ext)s" --batch-file $1
  fi
}
