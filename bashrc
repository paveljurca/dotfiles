
#=== does NOT apply to sh-bang ===

#[ -z "$PS1" ] && return
#function cd {
#  builtin cd "$@" && l
#}

#=== (!) move to .profile ===
export PATH=/home/pi/perl:$PATH
export PS1='\w '
#============================

#=== future aliases ===

#test -s ~/.alias && . ~/.alias || true
#source ~/.bash_aliases &>/dev/null

alias sudo='sudo '

### dir
alias ..='cd ..'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

### git
alias a='git add '
alias m='git commit -m '
alias g='git push origin master'
alias s='git status'
alias d='git diff '
alias p='git log -p '

### power
alias asleep='sudo /usr/sbin/pm-suspend'
alias reboot='sudo /sbin/reboot'
alias down='sudo /sbin/shutdown -h now'

### youtube-dl
alias y='youtube-dl -f mp4,best '
alias ya='youtube-dl --extract-audio --audio-format mp3 --audio-quality 192K '

# Temp
alias cpu='cat /sys/class/thermal/thermal_zone0/temp'

# cls
alias cls='clear'

#== VI(M) fix on Pi ==#
#alias vi='ex -v '
#======================

### very basic html reader
function www() {
  w3m "$1" -dump -cols 50|less
}

### cd and dir
j() {
  cd "$@" && ls -CF;
}

### play audio in background
play() {
  { mplayer "$1" -volume 40 -noconsolecontrols &>/dev/null; } &
}

