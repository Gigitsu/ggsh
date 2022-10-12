# fasd

[zoxide ][1] is a **smarter cd command**, inspired by z and autojump.

## Requirements

[Install zoxide][2] with homebrew by running the following command:

```sh
brew install zoxide
```

## Getting started

```sh
j foo              # cd into highest ranked directory matching foo
j foo bar          # cd into highest ranked directory matching foo and bar
j foo /            # cd into a subdirectory starting with foo
j ~/foo            # z also works like a regular cd command
j foo/             # cd into relative path
j ..               # cd one level up
j -                # cd into previous directory
ji foo             # cd with interactive selection (using fzf)
j foo<SPACE><TAB>  # show interactive completions (zoxide v0.8.0+, bash 4.4+/fish/zsh only)
```

[1]: https://github.com/ajeetdsouza/zoxide
[2]: https://github.com/ajeetdsouza/zoxide#installation