# Check asdf exists
(( ! $+commands[asdf] )) && return 1

# Find where asdf should be installed
ASDF_DIR="${ASDF_DIR:-$HOME/.asdf}"

# If not found, check for Homebrew package
if [[ ! -f "$ASDF_DIR/asdf.sh" || ! -f "$ASDF_COMPLETIONS/asdf.bash" ]] && (( $+commands[brew] )); then
  ASDF_DIR="$(brew --prefix asdf)/libexec"
fi

# Load command, completion is already loaded by homebrew
if [[ -f "$ASDF_DIR/asdf.sh" ]]; then
  . "$ASDF_DIR/asdf.sh"
fi
