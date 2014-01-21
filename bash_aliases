# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -lFh'
alias la='ls -Alh'
alias l='ls -CF'
alias lx='ls -lXB'         # sort by extension
alias lk='ls -lSr'         # sort by size, biggest last
alias lc='ls -ltcr'        # sort by and show change time, most recent last
alias lu='ls -ltur'        # sort by and show access time, most recent last
alias lt='ls -ltr'         # sort by date, most recent last
alias lm='ls -al |more'    # pipe through 'more'
alias lr='ls -lR'          # recursive ls

# aliases manipulating normal system commands
alias free='free -m'
alias glances='glances -e'
alias mkdir='mkdir -p'
alias more='less'
alias tree='tree -Csu'     # nice alternative to 'recursive ls'
alias watch='watch -n 1'

# lazyness aliases
alias abmelden='gnome-session-save --logout --gui'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias banIp='iptables -A INPUT -j DROP -s'
alias busy='my_file=$(find /usr/include -type f | sort -R | head -n 1); my_len=$(wc -l $my_file | awk "{print $1}"); let "r = $RANDOM % $my_len" 2>/dev/null; vim +$r $my_file'
alias calcTTRSSpurged='grep -i purged /var/log/tt-rss.log |grep -v "ged 0 o" |cut -f 3 -d" " |xargs | sed -e "s/ /+/g" | bc'
alias fakt='git add -A; git commit -m "f akt"; git push'
alias jabref='java -jar ~/opt/JabRef-2.7b2.jar'
alias jdownloader='java -jar ~/opt/jdownloader/JDownloader.jar &'
alias minecraft='java -Xmx800m -jar ~/opt/minecraft/minecraft.jar'
alias mobile_atlas_creator='java -Xmx800m -jar ~/opt/mobile_atlas_creator/Mobile_Atlas_Creator.jar'
alias nightingale='~/opt/Nightingale/nightingale &'
alias nmap-manual='HOST=127.0.0.1;for((port=1;port<=65535;++port)); do echo -en "$port ";if echo -en "open $HOST $port\nlogout\quit" | telnet 2>/dev/null | grep "Connected to" > /dev/null; then echo -en "\n\nport $port/tcp is open\n\n";fi;done | grep open'
alias packageinstall='sudo aptitude install $(cat full.package.list-$(/bin/uname -n))'
alias packagelist='dpkg --get-selections | /bin/grep -v deinstall$ | /bin/grep install$ | /usr/bin/awk '"'"'{print $1}'"'"' > full.package.list-$(/bin/uname -n)'
alias pg='ps waux | grep -i'
alias proxy='screen -S proxyspence ssh -N -L 3333:localhost:3128 spence'
alias songbird='nightingale'
alias thumbsdb-delete='find . -type f -name Thumbs.db -exec rm {} \;'
alias xg='cd ~/opt/xg/; screen -S xdcc-grabscher ./xg.application'
#alias whatthecommit='git commit -m "$(curl whatthecommit.com | grep \'^<p>\' | cut -d\'>\' -f2-)"'

