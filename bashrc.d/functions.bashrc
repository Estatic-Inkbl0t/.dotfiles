# Functions
# Quickly display multiple file types
function wi { test "$#" -gt 0 && stat --printf "%n: %F\n" "$@"; }
. "$HOME/.cargo/env"
