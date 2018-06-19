alias dspace='ls -NQ | xargs du -s | sort -k 1 -g'
alias less8='LESSCHARSET=utf-8 less'
alias ducks='du -cks * | sort -rn | head -11'
alias tma='tmux attach'
alias cursor-reset="echo -ne '\e]12;white\a'"

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias lt='ls -ratl'
alias dir='ls -al'

# Copy file into clipboard
alias cs='xclip -selection clipboard'
# and paste it if needed
alias vs='xclip -o -selection clipboard'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias psa='ps --headers axf -o pid,ppid,pri,state,user:15,group:15,nlwp,%cpu,%mem,rss,vsz,maj_flt,time,start,comm'

# Some disk usage commands
alias big-dir='du -ah . | sort -rh | head -20'
alias big-files='ls -1Rhs | sed -e "s/^ *//" | grep "^[0-9]" | sort -hr | head -n20'

alias mycoinmon='coinmon -c eur -f BTC,ETH,XRP,LTC,NEO,ICO,XMR'

alias gnomesocks='ssh -p 2222 -D 8123 -f -C -q -N theadmin@gnomedia.com'

