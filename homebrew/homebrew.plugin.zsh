(( ! $+commands[brew] )) && return 1

#-- Variables

# Load standard Homebrew shellenv into the shell session.
# Load 'HOMEBREW_' prefixed variables only. Avoid loading 'PATH' related
# variables as they are already handled in standard zsh configuration.
eval "${(@M)${(f)"$(brew shellenv 2> /dev/null)"}:#export HOMEBREW*}"

# Add completion for keg-only brewed curl when available.
if [[ -d "${curl_prefix::="$(brew --prefix 2> /dev/null)"/opt/curl}" ]]; then
  fpath=($curl_prefix/share/zsh/site-functions $fpath)
fi
unset curl_prefix

#-- Aliases

# Homebrew
alias brc='brew cleanup'
alias bri='brew install'
alias brL='brew leaves'
alias brl='brew list'
alias brh='brew help'
alias bro='brew outdated'
alias brs='brew search'
alias bru='brew upgrade'
alias brx='brew uninstall'

# Homebrew Cask
alias cki='brew install --cask'
alias ckl='brew list --cask'
alias cko='brew outdated --cask'
alias cks='brew search --cask'
alias cku='brew upgrade --cask'
alias ckx='brew uninstall --cask'

if (( $+commands[fzf] )); then
  function fzf_search_install {
    local what=$1; shift

    local inst=$(brew $what | fzf --query="$1" -m --preview 'HOMEBREW_COLOR=true brew info {}')

    if [[ $inst ]]; then
      for prog in $(echo $inst); do; brew install $prog; done;
    fi
  }

  alias brews='fzf_search_install formulae'
  alias casks='fzf_search_install casks'
fi
