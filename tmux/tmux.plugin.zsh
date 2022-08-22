local root=${${(%):-%x}:A:h}

if [[ ! -e "$HOME/.tmux.conf" ]]; then
  ln -s $root/tmux.conf $HOME/.tmux.conf
fi

$root/helpers/open_session.sh $PWD