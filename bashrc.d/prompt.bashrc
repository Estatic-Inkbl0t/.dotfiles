# Function to get the current Git branch
function parse_git_branch {
      git branch 2>/dev/null | grep -e '^\*' | sed 's/^\* \(.*\)/ (\1)/'
}

# Add a newline after each command
export PROMPT_COMMAND='echo -ne "\n"'

# Set the prompt
export PS1="\[\e[32m\]\u@\h \[\e[35m\]\D{%Y-%m-%d} \t \[\e[94m\]\w\[\e[33m\]\$(parse_git_branch)\[\e[0m\]\n\$ "

# Use this prompt if $(parse_git_branch) causes issues 
#export PS1="\[\e[32m\]\u@\h \[\e[35m\]\D{%Y-%m-%d} \t \[\e[94m\]\w \[\e[0m\]\n\$ "
