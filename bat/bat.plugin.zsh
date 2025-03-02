(( ! $+commands[bat] )) && return 1

# Save the original system `cat` under `rcat`
alias rcat="$(which cat)"

# For all other systems
alias cat="$(which bat)"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"
