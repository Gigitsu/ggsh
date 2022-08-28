local root=${${(%):-%x}:A:h}

if [[ ! -d "$HOME/.config/gitui" ]]; then
  ln -s $root $HOME/.config/gitui
fi