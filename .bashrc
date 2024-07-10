# ~/.bashrc

[[ $- != *i* ]] && return

alias sudo='sudo '
alias ChatGPT='~/bin/InitializeGPT'
alias nvmequickcheck='~/bin/nvmecheck'
alias diskuse='du --human-readable --max-depth=1'
alias download-audio='yt-dlp -x --audio-format best'
alias download-audio-mp3='yt-dlp -x --audio-format mp3'
alias download-audio-flac='yt-dlp -x --audio-format flac'
alias download-audio-opus='yt-dlp -x --audio-format opus'
alias openvpn-connect-netherlands-1='openvpn /etc/openvpn/client/nl.ovpn'
alias openvpn-connect-netherlands-2='openvpn /etc/openvpn/client/nl2.ovpn'
alias openvpn-connect-netherlands-3='openvpn /etc/openvpn/client/nl3.ovpn'
alias openvpn-connect-netherlands-4='openvpn /etc/openvpn/client/nl4.ovpn'
alias openvpn-connect-netherlands-5='openvpn /etc/openvpn/client/nl5.ovpn'
alias openvpn-connect-japan='openvpn /etc/openvpn/client/jp.ovpn'
alias openvpn-connect-unitedstates='openvpn /etc/openvpn/client/us.ovpn'
alias kill-waybar='~/bin/kill-waybar'
alias kill-firefox='~/bin/kill-firefox'
alias kill-steam='~/bin/kill-steam'
alias catcputemp='~/bin/echo-cpu-temp'
alias catbattery='~/bin/echo-battery-microwattage'
alias untar='tar -xvzf'
alias ll='ls -ahl --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias mpi='mpv --keep-open'
alias fetch='fastfetch --localip-show-ipv4 false'
PS1='[\u@\h \W]\$ '
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(starship init bash)"
