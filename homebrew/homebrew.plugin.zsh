(( ! $+commands[brew] )) && return 1

#-- Variables

# Load standard Homebrew shellenv into the shell session.
# Load 'HOMEBREW_' prefixed variables only. Avoid loading 'PATH' related
# variables as they are already handled in standard zsh configuration.
eval "${(@M)${(f)"$(brew shellenv 2> /dev/null)"}:#export HOMEBREW*}"

#-- Aliases

# Homebrew
alias br='brew'
alias brc='brew cleanup'
alias bri='brew install'
alias brL='brew leaves'
alias brl='brew list'
alias brh='brew help'
alias bro='brew outdated'
alias brs='brew search'
alias bru='brew upgrade'
alias brx='brew uninstall'
alias brz='brew uninstall --zap'

# Homebrew Cask
function ck() { brew "$1" --cask "${@:2}"; }
alias cki='brew install --cask'
alias ckl='brew list --cask'
alias cko='brew outdated --cask'
alias cks='brew search --cask'
alias cku='brew upgrade --cask'
alias ckx='brew uninstall --cask'
alias ckz='brew uninstall --zap --cask'

if (( $+commands[fzf] )); then
  function fzf_search_install {
    local what=$1; shift

    local inst=$(brew $what | fzf --query="$1" -m --preview 'HOMEBREW_COLOR=true brew info {}')

    if [[ $inst ]]; then
      for prog in $(echo $inst); do; brew install $prog; done;
    fi
  }

  alias brs='fzf_search_install formulae'
  alias cks='fzf_search_install casks'
fi
