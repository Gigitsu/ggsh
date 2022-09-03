# fzf

Add integration [fzf](https://github.com/junegunn/fzf), a general-purpose command-line fuzzy finder.

This plugin enables fzf default keybindings and completions.

## Requirements

[Install fzf](https://github.com/junegunn/fzf#using-homebrew) with homebrew with:

```sh
brew install fzf
```

## Variables

- `FZF_DEFAULT_COMMAND` Default command to use when input is tty, if `rg` is installed this variable is set otherwise not
- `FZF_CTRL_T_COMMAND` Default ctrl-t command, if `rg` is installed this variable is set otherwise not