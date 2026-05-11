# ~/.bashrc

# Source global definitions
[[ -f /etc/bashrc ]] && . /etc/bashrc

# Prepend paths only if missing
path_prepend() {
    case ":$PATH:" in
        *":$1:"*) ;;
        *) PATH="$1${PATH:+:$PATH}" ;;
    esac
}

path_prepend "$HOME/.local/bin"
path_prepend "$HOME/bin"
path_prepend "/opt/emacs-30.2/bin"
path_prepend "$HOME/.config/emacs/bin"

export PATH

# Uncomment if desired
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [[ -d ~/.dotfiles/bash/.config/bashrc.d ]]; then
    for rc in ~/.dotfiles/bash/.config/bashrc.d/*; do
        [[ -f "$rc" ]] && . "$rc"
    done
fi
unset rc path_prepend
