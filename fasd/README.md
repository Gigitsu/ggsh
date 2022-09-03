# fasd

[Fasd][1] (pronounced similar to "fast") is a command-line productivity booster. Fasd offers quick access to files and directories for POSIX shells.

## Requirements

[Install fasd][2] with homebrew by running the following command:

```sh
brew install fasd
```

## Aliases

| Alias | Command                                   | Description                                                 |
|-------|-------------------------------------------|-------------------------------------------------------------|
| v     | `fasd -f -e "$EDITOR"`                    | List frequent/recent files matching the given filename.     |
| o     | `fasd -a -e xdg-open`                     | List frequent/recent files and directories matching.        |
| j     | `fasd_cd -d`                           | cd with interactive selection                               |

[1]: https://github.com/clvv/fasd
[2]: https://github.com/clvv/fasd#install