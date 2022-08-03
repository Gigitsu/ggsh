#
# Variables
#

# Load standard Homebrew shellenv into the shell session.
# Load 'HOMEBREW_' prefixed variables only. Avoid loading 'PATH' related
# variables as they are already handled in standard zsh configuration.
if (( $+commands[brew] )); then
  eval "${(@M)${(f)"$(brew shellenv 2> /dev/null)"}:#export HOMEBREW*}"
fi

#
# Aliases
#

# Homebrew
alias brewc='brew cleanup'
alias brewi='brew install'
alias brewL='brew leaves'
alias brewl='brew list'
alias brewh='brew help'
alias brewo='brew outdated'
alias brews='brew search'
alias brewu='brew upgrade'
alias brewx='brew uninstall'

# Homebrew Cask
alias caski='brew install --cask'
alias caskl='brew list --cask'
alias casko='brew outdated --cask'
alias casks='brew search --cask'
alias casku='brew upgrade --cask'
alias caskx='brew uninstall --cask'

if (( $+commands[fzf] )); then
  function brew_install {
    if [ -z $@ ]; then
      fzf_search_install
    else
      command brew install $@
    fi
  }

  function brew_search {
    if [ -z $@ ]; then
      fzf_search_install
    else
      command brew search $@
    fi
  }

  function fzf_search_install {
      local inst=$(brew search | fzf -m)

      if [[ $inst ]]; then
        for prog in $(echo $inst);
        do; brew install $prog; done;
      fi
  }

  alias brewi='brew_install'
  alias brews='brew_search'
fi
