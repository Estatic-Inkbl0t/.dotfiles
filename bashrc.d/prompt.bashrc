# Change color of prompt using tput
PINK="$(tput setaf 5)"
BOLD="$(tput bold)"
RESET="$(tput sgr0)"

# Change prompt to user@working directory$
PS1='\[$BOLD\]\u@\[$PINK\]\W\[$RESET\]\$ '
