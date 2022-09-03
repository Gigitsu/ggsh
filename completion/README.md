# Completion

Loads and configures <kbd>TAB</kbd> completion and provides additional
completions from the [zsh-completions][1] project.

This plugin must be loaded all other plugins that provide completion definitions.

## Options

- `COMPLETE_IN_WORD` complete from both ends of a word.
- `ALWAYS_TO_END` move cursor to the end of a completed word.
- `PATH_DIRS` perform path search even on command names with slashes.
- `AUTO_MENU` show completion menu on a successive <kbd>TAB</kbd> press.
- `AUTO_LIST` automatically list choices on ambiguous completion.
- `AUTO_PARAM_SLASH` if completed parameter is a directory, add a trailing slash (`/`).
- `EXTENDED_GLOB` needed for file modification glob modifiers with _compinit_.
- `MENU_COMPLETE` autoselect the first completion entry.
- `FLOW_CONTROL` disable start/stop characters in shell editor.

## Variables

- `LS_COLORS` used by default for Zsh [standard style][2] 'list-colors'.

## Contributors

Completions should be submitted to the [zsh-completions][1] project according to
its rules and regulations. This module will be synchronized against it.

[1]: https://github.com/zsh-users/zsh-completions
[2]: https://zsh.sourceforge.net/Doc/Release/Completion-System.html#Standard-Styles