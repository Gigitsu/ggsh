#
# Sets common useful options and aliases.
#
# Authors:
#   Gigitsu <luigi.clemente@gsquare.it>

#############################
###      Environment      ###
#############################

# This logic comes from an old version of zim. Essentially, bracketed-paste was
# added as a requirement of url-quote-magic in 5.1, but in 5.1.1 bracketed
# paste had a regression. Additionally, 5.2 added bracketed-paste-url-magic
# which is generally better than url-quote-magic so we load that when possible.
autoload -Uz is-at-least
if [[ ${ZSH_VERSION} != 5.1.1 && ${TERM} != "dumb" ]]; then
  if is-at-least 5.2; then
    autoload -Uz bracketed-paste-url-magic
    zle -N bracketed-paste bracketed-paste-url-magic
  elif is-at-least 5.1; then
    autoload -Uz bracketed-paste-magic
    zle -N bracketed-paste bracketed-paste-magic
  fi
  autoload -Uz url-quote-magic
  zle -N self-insert url-quote-magic
fi

#--- General

setopt COMBINING_CHARS      # Combine zero-length punctuation characters (accents) with the base character.
setopt INTERACTIVE_COMMENTS # Enable comments in interactive shell.
setopt RC_QUOTES            # Allow 'Henry''s Garage' instead of 'Henry'\''s Garage'.
unsetopt MAIL_WARNING       # Don't print a warning message if a mail file has been accessed.

# Allow mapping Ctrl+S and Ctrl+Q shortcuts
[[ -r ${TTY:-} && -w ${TTY:-} && $+commands[stty] == 1 ]] && stty -ixon <$TTY >$TTY

#--- Jobs

setopt LONG_LIST_JOBS     # List jobs in the long format by default.
setopt AUTO_RESUME        # Attempt to resume existing job before creating a new process.
setopt NOTIFY             # Report status of background jobs immediately.
unsetopt BG_NICE          # Don't run all background jobs at a lower priority.
unsetopt HUP              # Don't kill jobs on shell exit.
unsetopt CHECK_JOBS       # Don't report on jobs when shell exit.

#--- Termcap

export LESS_TERMCAP_mb=$'\E[01;31m'      # Begins blinking.
export LESS_TERMCAP_md=$'\E[01;31m'      # Begins bold.
export LESS_TERMCAP_me=$'\E[0m'          # Ends mode.
export LESS_TERMCAP_se=$'\E[0m'          # Ends standout-mode.
export LESS_TERMCAP_so=$'\E[00;47;30m'   # Begins standout-mode.
export LESS_TERMCAP_ue=$'\E[0m'          # Ends underline.
export LESS_TERMCAP_us=$'\E[01;32m'      # Begins underline.

#############################
###       Utilities       ###
#############################

#--- Options

setopt CORRECT              # Correct commands.
setopt AUTO_CD              # Auto changes to a directory without typing cd.
setopt AUTO_PUSHD           # Push the old directory onto the stack on cd.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.
setopt PUSHD_TO_HOME        # Push to home directory when no argument is given.
setopt CDABLE_VARS          # Change directory to a path stored in a variable.
setopt MULTIOS              # Write to multiple descriptors.
setopt EXTENDED_GLOB        # Use extended globbing syntax.
unsetopt CLOBBER            # Do not overwrite existing files with > and >>. Use >! and >>! to bypass.

# Load 'run-help' function.
autoload -Uz run-help-{ip,openssl,sudo}

#--- Aliases

# Disable correction.
alias ack='nocorrect ack'
alias cd='nocorrect cd'
alias cp='nocorrect cp'
alias ebuild='nocorrect ebuild'
alias gcc='nocorrect gcc'
alias gist='nocorrect gist'
alias grep='nocorrect grep'
alias heroku='nocorrect heroku'
alias ln='nocorrect ln'
alias man='nocorrect man'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias mysql='nocorrect mysql'
alias rm='nocorrect rm'

# Disable globbing.
alias bower='noglob bower'
alias fc='noglob fc'
alias find='noglob find'
alias ftp='noglob ftp'
alias history='noglob history'
alias locate='noglob locate'
alias rake='noglob rake'
alias rsync='noglob rsync'
alias scp='noglob scp'
alias sftp='noglob sftp'

# Define general aliases.
alias _='sudo'
alias b='${(z)BROWSER}'

alias diffu="diff --unified"
alias e='${(z)VISUAL:-${(z)EDITOR}}'
alias mkdir="${aliases[mkdir]:-mkdir} -p"
alias p='${(z)PAGER}'
alias po='popd'
alias pu='pushd'
alias sa='alias | grep -i'
alias type='type -a'

# Safe ops. Ask the user before doing anything destructive.
alias cp="${aliases[cp]:-cp} -i"
alias ln="${aliases[ln]:-ln} -i"
alias mv="${aliases[mv]:-mv} -i"
alias rm="${aliases[rm]:-rm} -i"

alias rd=rmdir
alias d='dirs -v'

for index ({1..9}); do
  alias "$index"="cd -${index}";
  alias "$index$index"="cd +${index}";
done
unset index


# List directory contents
if (( $+commands[eza] )); then
  export EZA_COLORS=${EZA_COLORS:-'ga=34:gm=33:gd=31:gv=35:gt=33:uu=1;32:gu=1;32:ur=1;32:uw=1;33:ux=1;31:ue=1;31:gr=1;32:gw=1;33:gx=1;31:tr=1;32:tw=1;33:tx=1;31:sn=33:sb=33::nm=1;33:ng=1;33:um=1;33:ug=1:33:nt=1;33:ut=1;33:da=38'}

  alias ls='eza --icons --group-directories-first' # Default with icons and directory first
  alias l='ls -1a'          # Lists in one column, hidden files.
  alias ll='ls -lghb'       # Lists human readable sizes.
  alias lr='ll -T'          # Lists human readable sizes, recursively.
  alias la='ll -a'          # Lists human readable sizes, hidden files.
  alias lk='ll --sort=size' # Lists sorted by size, largest last.
  alias lt='ll --sort=date' # Lists sorted by date, most recent last.
  alias lc='lt --changed'   # Lists sorted by date, most recent last, shows change time.
  alias lu='lt --accessed'  # Lists sorted by date, most recent last, shows access time.
else
  alias ls="${aliases[ls]:-ls} --color=auto" # Defaults ls with colors
  alias l='ls -1A'         # Lists in one column, hidden files.
  alias ll='ls -lh'        # Lists human readable sizes.
  alias lr='ll -R'         # Lists human readable sizes, recursively.
  alias la='ll -A'         # Lists human readable sizes, hidden files.
  alias lk='ll -Sr'        # Lists sorted by size, largest last.
  alias lt='ll -tr'        # Lists sorted by date, most recent last.
  alias lc='lt -c'         # Lists sorted by date, most recent last, shows change time.
  alias lu='lt -u'         # Lists sorted by date, most recent last, shows access time.
fi

alias lm='la | "$PAGER"' # Lists human readable sizes, hidden files through pager.
alias sl='ls'            # Correction for common spelling error.

alias grep="${aliases[grep]:-grep} --color=auto"

#--- Functions

# Makes a directory and changes to it.
function mkdcd {
  [[ -n "$1" ]] && mkdir -p "$1" && builtin cd "$1"
}

# Changes to a directory and lists its contents.
function cdls {
  builtin cd "$argv[-1]" && ls "${(@)argv[1,-2]}"
}

# Pushes an entry onto the directory stack and lists its contents.
function pushdls {
  builtin pushd "$argv[-1]" && ls "${(@)argv[1,-2]}"
}

# Pops an entry off the directory stack and lists its contents.
function popdls {
  builtin popd "$argv[-1]" && ls "${(@)argv[1,-2]}"
}

# Prints columns 1 2 3 ... n.
function slit {
  awk "{ print ${(j:,:):-\$${^@}} }"
}

# Finds files and executes a command on them.
function find-exec {
  find . -type f -iname "*${1:-}*" -exec "${2:-file}" '{}' \;
}

# Displays user owned processes status.
function psu {
  ps -U "${1:-$LOGNAME}" -o 'pid,%cpu,%mem,command' "${(@)argv[2,-1]}"
}
