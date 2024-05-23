# ~/.bashrc

[[ $- != *i* ]] && return

alias kill-waybar='~/bin/kill-waybar'
alias kill-firefox='~/bin/kill-firefox'
alias kill-steam='~/bin/kill-steam'
alias catcputemp='~/bin/echo-cpu-temp.sh'
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
