#
# Correctly initialize asdf version manager
#
# Authors
#   Gigitsu <luigi.clemente@gsquare.it>
#

# Check if asdf exists
(( ! $+commands[asdf] )) && return 1

export ASDF_DATA_DIR="${ASDF_DATA_DIR:-$HOME/.asdf}"
path=("$ASDF_DATA_DIR/shims" $path)
