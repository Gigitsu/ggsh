#
# Configure terraform completion and aliases
#
# Authors
#   Gigitsu <luigi.clemente@gsquare.it>
#

# Check if terraform exists
(( ! $+commands[terraform] )) && return 1

#--- Download terraform completion from oh my zsh if not exists
_completion_path="$HOME/.cache/ggsh/share/site-functions/_terraform"
if [[ ! -f $_completion_path ]]; then
  mkdir -p $(dirname $_completion_path)
  curl -L https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/terraform/_terraform > $_completion_path
fi
unset _completion_path

if [[ ! -f ~/.cache/ggl/ggloader.zsh ]]; then
  mkdir -p ~/.cache/ggl
fi

alias tf='terraform'
alias tfa='terraform apply'
alias tfc='terraform console'
alias tfd='terraform destroy'
alias tff='terraform fmt'
alias tfi='terraform init'
alias tfo='terraform output'
alias tfp='terraform plan'
alias tfv='terraform validate'
