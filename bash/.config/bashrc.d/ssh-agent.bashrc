# ~/.config/bashrc.d/ssh-agent.bashrc
#
# Start or reuse ssh-agent for interactive local shells only.
# Stays silent for non-interactive sessions so it will not break sftp/rsync.

case $- in
  *i*) ;;
  *) return ;;
esac

# Skip remote SSH sessions. Only manage an agent on local terminal logins.
[ -n "$SSH_CONNECTION" ] && return

SSH_ENV="$HOME/.ssh/agent.env"

start_agent() {
    eval "$(ssh-agent -s)" >/dev/null
    umask 077
    cat > "$SSH_ENV" <<EOF
export SSH_AUTH_SOCK='$SSH_AUTH_SOCK'
export SSH_AGENT_PID='$SSH_AGENT_PID'
EOF
}

load_agent_env() {
    [ -r "$SSH_ENV" ] || return 1
    . "$SSH_ENV" >/dev/null 2>&1
    [ -n "$SSH_AGENT_PID" ] || return 1
    [ -n "$SSH_AUTH_SOCK" ] || return 1
    kill -0 "$SSH_AGENT_PID" 2>/dev/null || return 1
    [ -S "$SSH_AUTH_SOCK" ] || return 1
    return 0
}

if ! load_agent_env; then
    start_agent
fi

if ! ssh-add -l >/dev/null 2>&1; then
    printf '%s\n' "SSH agent has no identities. Run: ssh-add -t 8h ~/.ssh/id_..."
fi
