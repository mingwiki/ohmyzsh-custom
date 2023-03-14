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
    hup yt-dlp --proxy socks5://10.10.10.10:20000 --verbose --no-check-certificates
  fi
}
download_youtube_homepage() {
  if [[ $# -eq 0 ]]; then
    echo "Error: 'download_youtube_homepage' missing batch file"
    return 1
  else
    yt --yes-playlist --download-archive archive.txt --batch-file $1 -o "%(playlist)s/%(title)s.%(ext)s"
  fi
}
