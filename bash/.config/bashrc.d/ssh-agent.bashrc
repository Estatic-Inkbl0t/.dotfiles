#start ssh-agent if not already running
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval $(ssh-agent -s) > /dev/null
    ssh-add ~/.ssh/id_Estatic-Inkbl0t-signing 2>/dev/null
    ssh-add ~/.ssh/id_Estatic-Inkbl0t 2>/dev/null
fi
