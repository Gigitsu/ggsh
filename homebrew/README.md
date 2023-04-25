# Homebrew

Defines Homebrew specific environment variables and aliases.

## Variables

Execute the following to list the environment variables loaded in the shell:

```sh
brew shellenv
```

## Aliases

### Homebrew Core

| Alias | Command          | Description                                                                     |
| ----- | ---------------- | ------------------------------------------------------------------------------- |
| br    | `brew`           | Brew command                                                                    |
| brc   | `brew cleanup`   | Cleans outdated brews and their cached archives.                                |
| bri   | `brew install`   | Installs a formula.                                                             |
| brL   | `brew leaves`    | Lists installed formulae that are not dependencies of anotherinstalled formula. |
| brl   | `brew list`      | Lists installed formulae.                                                       |
| bro   | `brew outdated`  | Lists brews which have an update available.                                     |
| brs   | `brew search`    | Searches for a formula.                                                         |
| bru   | `brew upgrade`   | Upgrades outdated formulae.                                                     |
| brx   | `brew uninstall` | Uninstalls a formula.                                                           |

### Homebrew Cask

| Alias | Command                 | Description                                 |
| ----- | ----------------------- | ------------------------------------------- |
| cki   | `brew install --cask`   | Installs a cask.                            |
| ckl   | `brew list --cask`      | Lists installed casks.                      |
| cko   | `brew outdated --cask`  | Lists casks which have an update available. |
| cks   | `brew search --cask`    | Searches for a cask.                        |
| cku   | `brew unpgrade --cask`  | Upgrades outdated casks.                    |
| ckx   | `brew uninstall --cask` | Uninstalls a cask.                          |
