alias dspace='ls -NQ | xargs du -s | sort -k 1 -g'
alias less8='LESSCHARSET=utf-8 less'
alias ducks='du -cks * | sort -rn | head -11'
alias dir='ls -al'
alias ll='ls -alF'
alias la='ls -A'
# alias l='ls -CF'
alias tma='tmux attach'
alias cursor-reset="echo -ne '\e]12;white\a'"

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
# alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


