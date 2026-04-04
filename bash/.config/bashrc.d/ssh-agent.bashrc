# SSH agent - reuse existing or start new
SSH_ENV="$HOME/.ssh/agent.env"

start_agent() {
    ssh-agent > "$SSH_ENV"
    chmod 600 "$SSH_ENV"
    source "$SSH_ENV" > /dev/null
}

if [ -f "$SSH_ENV" ]; then
    source "$SSH_ENV" > /dev/null
    kill -0 "$SSH_AGENT_PID" 2>/dev/null || start_agent
else
    start_agent
fi

# Prompt user to add keys if agent has none
if ssh-add -l > /dev/null 2>&1; then
    : # keys already loaded
else
    echo "SSH agent has no identities. Run: ssh-add -t 8h ~/.ssh/id_Estatic-Inkbl0t ~/.ssh/id_Estatic-Inkbl0t-signing"
fi
