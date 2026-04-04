# History stuph
export HISTSIZE=5000
export HISTFILESIZE=5000
export HISTCONTROL=$HISTCONTROL:ignoreboth
export HISTTIMEFORMAT="%F %T "
export HISTIGNORE="ls:ll:l.:cd:pwd:bg:fg:history:clear:exit"
shopt -s histappend
