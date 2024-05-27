# ~/.bashrc

[[ $- != *i* ]] && return

alias download-audio='yt-dlp -x --audio-format best'
alias download-audio-mp3='yt-dlp -x --audio-format mp3'
alias download-audio-flac='yt-dlp -x --audio-format flac'
alias download-audio-opus='yt-dlp -x --audio-format opus'
alias sudo='sudo '
alias kill-waybar='~/bin/kill-waybar'
alias kill-firefox='~/bin/kill-firefox'
alias kill-steam='~/bin/kill-steam'
alias catcputemp='~/bin/echo-cpu-temp'
alias catbattery='~/bin/echo-battery-microwattage'
alias untar='tar -xvzf'
alias ll='ls -al'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias mpi='mpv --keep-open'
alias fetch='fastfetch --localip-show-ipv4 false'
alias vray-benchmark='/home/Avery/bin/vray-benchmark'
PS1='[\u@\h \W]\$ '
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(starship init bash)"
