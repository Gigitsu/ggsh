(( ! $+commands[bat] )) && return 1

# Save the original system `cat` under `rcat`
alias rcat="$(which cat)"

# For all other systems
alias cat="$(which bat)"
export BAT_THEME="Solarized (dark)"

export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'"
export MANROFFOPT="-c"
