#
# Initialize and configures zoxide
#
# Authors
#   Gigitsu <luigi.clemente@gsquare.it>
#

# check if zoxide is installed
(( ! ${+commands[zoxide]} )) && return 1

export _ZO_DATA_DIR="$HOME/.cache/ggsh"

eval "$(zoxide init zsh --cmd j)"
