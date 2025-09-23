# dig short for a, ns, and mx records
alias diga='dig +short a'
alias digns='dig +short ns'
alias digmx='dig +short mx'

# Whois short
alias whoish='whois -H'

# Common use
alias tarnow='tar -acf '
alias untar='tar -xvf '
alias wget='wget -c '
alias grep='grep --color=auto'
alias fgrep='grep -F --color=auto'
alias egrep='grep -E --color=auto'
alias ip='ip --color '

# Find files for today
alias f2day='find . -type f -mtime 0 -exec ls -l {} +'
