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
| brewc | `brew cleanup`   | Cleans outdated brews and their cached archives.                                |
| brewi | `brew install`   | Installs a formula.                                                             |
| brewL | `brew leaves`    | Lists installed formulae that are not dependencies of anotherinstalled formula. |
| brewl | `brew list`      | Lists installed formulae.                                                       |
| brewo | `brew outdated`  | Lists brews which have an update available.                                     |
| brews | `brew search`    | Searches for a formula.                                                         |
| brewu | `brew upgrade`   | Upgrades outdated formulae.                                                     |
| brewx | `brew uninstall` | Uninstalls a formula.                                                           |

### Homebrew Cask

| Alias | Command                 | Description                                 |
| ----- | ----------------------- | ------------------------------------------- |
| caski | `brew install --cask`   | Installs a cask.                            |
| caskl | `brew list --cask`      | Lists installed casks.                      |
| casko | `brew outdated --cask`  | Lists casks which have an update available. |
| casks | `brew search --cask`    | Searches for a cask.                        |
| casku | `brew unpgrade --cask`  | Upgrades outdated casks.                    |
| caskx | `brew uninstall --cask` | Uninstalls a cask.                          |
