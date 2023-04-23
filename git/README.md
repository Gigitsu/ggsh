# Git

Enhances the [Git][1] distributed version control system by providing aliases.

## Aliases

### Git

| Alias | Command | Description         |
| ----- | ------- | ------------------- |
| g     | `git`   | Is short for `git`. |

### Branch (b)

| Alias | Command                          | Description                                                               |
| ----- | -------------------------------- | ------------------------------------------------------------------------- |
| gb    | `git branch`                     | Lists, creates, renames, and deletes branches.                            |
| gbc   | `git checkout -b`                | Creates a new branch.                                                     |
| gbl   | `git branch --verbose`           | Lists branches and their commits. (also `gbv`)                            |
| gbL   | `git branch --all --verbose`     | Lists all local and remote branches and their commits. (also `gba`)       |
| gbr   | `git branch --move`              | Renames a branch. (also `gbm`)                                            |
| gbR   | `git branch --move --force`      | Renames a branch even if the new branch name already exists. (also `gbM`) |
| gbs   | `git show-branch`                | Lists branches and their commits with ancestry graphs.                    |
| gbS   | `git show-branch --all`          | Lists local and remote branches and their commits with ancestry graphs.   |
| gbV   | `git branch --verbose --verbose` | Lists branches with more verbose information about their commits.         |
| gbx   | `git branch --delete`            | Deletes a branch. (also `gbd`)                                            |
| gbX   | `git branch --delete --force`    | Deletes a branch irrespective of its merged status. (also `gbD`)          |

### Commit (c)

| Alias | Command                                              | Description                                                                                          |
| ----- | ---------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| gc    | `git commit --verbose`                               | Records changes to the repository.                                                                   |
| gcS   | `git commit --verbose --gpg-sign`                    | Records changes to the repository. (Signed)                                                          |
| gca   | `git commit --verbose --all`                         | Stages all modified and deleted files.                                                               |
| gcaS  | `git commit --verbose --all --gpg-sign`              | Stages all modified and deleted files. (Signed)                                                      |
| gcm   | `git commit --message`                               | Records changes to the repository with the given message.                                            |
| gcmS  | `git commit --message --gpg-sign`                    | Records changes to the repository with the given message. (Signed)                                   |
| gcam  | `git commit --all --message`                         | Stages all modified and deleted files, and records changes to the repository with the given message. |
| gco   | `git checkout`                                       | Checks out a branch or paths to work tree.                                                           |
| gcO   | `git checkout --patch`                               | Checks out hunks from the index or the tree interactively.                                           |
| gcf   | `git commit --amend --reuse-message HEAD`            | Amends the tip of the current branch using the same log message as _HEAD_.                           |
| gcfS  | `git commit --amend --reuse-message HEAD --gpg-sign` | Amends the tip of the current branch using the same log message as _HEAD_. (Signed)                  |
| gcF   | `git commit --verbose --amend`                       | Amends the tip of the current branch.                                                                |
| gcFS  | `git commit --verbose --amend --gpg-sign`            | Amends the tip of the current branch. (Signed)                                                       |
| gcp   | `git cherry-pick --ff`                               | Applies changes introduced by existing commits.                                                      |
| gcP   | `git cherry-pick --no-commit`                        | Applies changes introduced by existing commits without committing.                                   |
| gcr   | `git revert`                                         | Reverts existing commits by reverting patches and recording new commits.                             |
| gcR   | `git reset "HEAD^"`                                  | Removes the _HEAD_ commit.                                                                           |
| gcs   | `git show`                                           | Displays commits with various objects.                                                               |
| gcsS  | `git show --pretty:short --show-signature`           | Displays commits with GPG signature.                                                                 |
| gcl   | `git-commit-lost`                                    | Lists lost commits.                                                                                  |
| gcy   | `git cherry --verbose --abbrev`                      | Displays commits yet to be applied to upstream in the short format.                                  |
| gcY   | `git cherry --verbose`                               | Displays commits yet to be applied to upstream.                                                      |

### Conflict (C)

| Alias | Command                                           | Description                                      |
| ----- | ------------------------------------------------- | ------------------------------------------------ |
| gCl   | `git --no-pager diff --name-only --diff-filter:U` | Lists unmerged files.                            |
| gCa   | `git add $(gCl)`                                  | Adds unmerged file contents to the index.        |
| gCe   | `git mergetool $(gCl)`                            | Executes merge-tool on all unmerged file.        |
| gCo   | `git checkout --ours --`                          | Checks out our changes for unmerged paths.       |
| gCO   | `gCo $(gCl)`                                      | Checks out our changes for all unmerged paths.   |
| gCt   | `git checkout --theirs --`                        | Checks out their changes for unmerged paths.     |
| gCT   | `gCt $(gCl)`                                      | Checks out their changes for all unmerged paths. |

### Data (d)

| Alias | Command                                                         | Description                                                      |
| ----- | --------------------------------------------------------------- | ---------------------------------------------------------------- |
| gd    | `git ls-files`                                                  | Displays information about files in the index and the work tree. |
| gdc   | `git ls-files --cached`                                         | Lists cached files.                                              |
| gdx   | `git ls-files --deleted`                                        | Lists deleted files.                                             |
| gdm   | `git ls-files --modified`                                       | Lists modified files.                                            |
| gdu   | `git ls-files --other --exclude-standard`                       | Lists untracked files.                                           |
| gdk   | `git ls-files --killed`                                         | Lists killed files.                                              |
| gdi   | `git status --porcelain --short --ignored | sed -n "s/^!! //p"` | Lists ignored files.                                             |

### Fetch (f)

| Alias | Command                                                  | Description                                                                                             |
| ----- | -------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| gf    | `git fetch`                                              | Downloads objects and references from another repository.                                               |
| gfa   | `git fetch --all`                                        | Downloads objects and references from all remote repositories.                                          |
| gfc   | `git clone`                                              | Clones a repository into a new directory.                                                               |
| gfca  | `git_clone_onto_srcdir "git clone"`                      | Clones a repository into a new src directory choosing name by repository name.                          |
| gfcr  | `git clone --recurse-submodules`                         | Clones a repository into a new directory including all submodules.                                      |
| gfcr  | `git clone --recurse-submodules`                         | Clones a repository into a new directory including all submodules.                                      |
| gfca  | `git_clone_onto_srcdir "git clone --recurse-submodules"` | Clones a repository into a new src directory choosing name by repository name including all submodules. |
| gfm   | `git pull`                                               | Fetches from and merges with another repository or local branch.                                        |
| gfr   | `git pull --rebase`                                      | Fetches from and rebases on another repository or local branch.                                         |

### Flow (F)

| Alias | Command         | Description                  |
| ----- | --------------- | ---------------------------- |
| gFi   | `git flow init` | Is short for `git flow init` |

#### Feature (Ff)

| Alias | Command                     | Description                              |
| ----- | --------------------------- | ---------------------------------------- |
| gFf   | `git flow feature`          | Is short for `git flow feature`          |
| gFfl  | `git flow feature list`     | Is short for `git flow feature list`     |
| gFfs  | `git flow feature start`    | Is short for `git flow feature start`    |
| gFff  | `git flow feature finish`   | Is short for `git flow feature finish`   |
| gFfp  | `git flow feature publish`  | Is short for `git flow feature publish`  |
| gFft  | `git flow feature track`    | Is short for `git flow feature track`    |
| gFfd  | `git flow feature diff`     | Is short for `git flow feature diff`     |
| gFfr  | `git flow feature rebase`   | Is short for `git flow feature rebase`   |
| gFfc  | `git flow feature checkout` | Is short for `git flow feature checkout` |
| gFfm  | `git flow feature pull`     | Is short for `git flow feature pull`     |
| gFfx  | `git flow feature delete`   | Is short for `git flow feature delete`   |

#### Bugfix (Fb)

| Alias | Command                    | Description                             |
| ----- | -------------------------- | --------------------------------------- |
| gFb   | `git flow bugfix`          | Is short for `git flow bugfix`          |
| gFbl  | `git flow bugfix list`     | Is short for `git flow bugfix list`     |
| gFbs  | `git flow bugfix start`    | Is short for `git flow bugfix start`    |
| gFbf  | `git flow bugfix finish`   | Is short for `git flow bugfix finish`   |
| gFbp  | `git flow bugfix publish`  | Is short for `git flow bugfix publish`  |
| gFbt  | `git flow bugfix track`    | Is short for `git flow bugfix track`    |
| gFbd  | `git flow bugfix diff`     | Is short for `git flow bugfix diff`     |
| gFbr  | `git flow bugfix rebase`   | Is short for `git flow bugfix rebase`   |
| gFbc  | `git flow bugfix checkout` | Is short for `git flow bugfix checkout` |
| gFbm  | `git flow bugfix pull`     | Is short for `git flow bugfix pull`     |
| gFbx  | `git flow bugfix delete`   | Is short for `git flow bugfix delete`   |

#### Release (Fl)

| Alias | Command                     | Description                              |
| ----- | --------------------------- | ---------------------------------------- |
| gFl   | `git flow release`          | Is short for `git flow release`          |
| gFll  | `git flow release list`     | Is short for `git flow release list`     |
| gFls  | `git flow release start`    | Is short for `git flow release start`    |
| gFlf  | `git flow release finish`   | Is short for `git flow release finish`   |
| gFlp  | `git flow release publish`  | Is short for `git flow release publish`  |
| gFlt  | `git flow release track`    | Is short for `git flow release track`    |
| gFld  | `git flow release diff`     | Is short for `git flow release diff`     |
| gFlr  | `git flow release rebase`   | Is short for `git flow release rebase`   |
| gFlc  | `git flow release checkout` | Is short for `git flow release checkout` |
| gFlm  | `git flow release pull`     | Is short for `git flow release pull`     |
| gFlx  | `git flow release delete`   | Is short for `git flow release delete`   |

#### Hotfix (Fh)

| Alias | Command                    | Description                             |
| ----- | -------------------------- | --------------------------------------- |
| gFh   | `git flow hotfix`          | Is short for `git flow hotfix`          |
| gFhl  | `git flow hotfix list`     | Is short for `git flow hotfix list`     |
| gFhs  | `git flow hotfix start`    | Is short for `git flow hotfix start`    |
| gFhf  | `git flow hotfix finish`   | Is short for `git flow hotfix finish`   |
| gFhp  | `git flow hotfix publish`  | Is short for `git flow hotfix publish`  |
| gFht  | `git flow hotfix track`    | Is short for `git flow hotfix track`    |
| gFhd  | `git flow hotfix diff`     | Is short for `git flow hotfix diff`     |
| gFhr  | `git flow hotfix rebase`   | Is short for `git flow hotfix rebase`   |
| gFhc  | `git flow hotfix checkout` | Is short for `git flow hotfix checkout` |
| gFhm  | `git flow hotfix pull`     | Is short for `git flow hotfix pull`     |
| gFhx  | `git flow hotfix delete`   | Is short for `git flow hotfix delete`   |

#### Support (Fs)

| Alias | Command                     | Description                              |
| ----- | --------------------------- | ---------------------------------------- |
| gFs   | `git flow support`          | Is short for `git flow support`          |
| gFsl  | `git flow support list`     | Is short for `git flow support list`     |
| gFss  | `git flow support start`    | Is short for `git flow support start`    |
| gFsf  | `git flow support finish`   | Is short for `git flow support finish`   |
| gFsp  | `git flow support publish`  | Is short for `git flow support publish`  |
| gFst  | `git flow support track`    | Is short for `git flow support track`    |
| gFsd  | `git flow support diff`     | Is short for `git flow support diff`     |
| gFsr  | `git flow support rebase`   | Is short for `git flow support rebase`   |
| gFsc  | `git flow support checkout` | Is short for `git flow support checkout` |
| gFsm  | `git flow support pull`     | Is short for `git flow support pull`     |
| gFsx  | `git flow support delete`   | Is short for `git flow support delete`   |

### Grep (g)

| Alias | Command                            | Description                                         |
| ----- | ---------------------------------- | --------------------------------------------------- |
| gg    | `git grep`                         | Displays lines matching a pattern.                  |
| ggi   | `git grep --ignore-case`           | Displays lines matching a pattern ignoring case.    |
| ggm   | `git grep --files-with-matches`    | Display names only of lines matching a pattern.     |
| ggM   | `git grep --files-without-matches` | Display names only of lines not matching a pattern. |
| ggl   | `undefined`                        | Lists files matching a pattern.                     |
| ggL   | `undefined`                        | Lists files that are not matching a pattern.        |
| ggv   | `git grep --invert-match`          | Displays lines not matching a pattern.              |
| ggw   | `git grep --word-regexp`           | Displays lines matching a pattern at word boundary. |

### Index (i)

| Alias | Command                                       | Description                                                        |
| ----- | --------------------------------------------- | ------------------------------------------------------------------ |
| gia   | `git add`                                     | Adds file contents to the index.                                   |
| giA   | `git add --patch`                             | Adds file contents to the index interactively.                     |
| giu   | `git add --update`                            | Adds file contents to the index (updates only known files).        |
| gid   | `git diff --no-ext-diff --cached`             | Displays changes between the index and a named commit (diff).      |
| giD   | `git diff --no-ext-diff --cached --word-diff` | Displays changes between the index and a named commit (word diff). |
| gii   | `git update-index --assume-unchanged`         | Temporarily ignore differences in a given file.                    |
| giI   | `git update-index --no-assume-unchanged`      | Unignore differences in a given file.                              |
| gir   | `git reset`                                   | Resets the current HEAD to the specified state.                    |
| giR   | `git reset --patch`                           | Resets the current index interactively.                            |
| gix   | `git rm -r --cached`                          | Removes files/directories from the index (recursively).            |
| giX   | `git rm -r --force --cached`                  | Removes files/directories from the index (recursively and forced). |

### Log (l)

| Alias | Command                                                                                     | Description                                                         |
| ----- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------- |
| gl    | `git log --topo-order --pretty:format:"$_git_log_medium_format"`                            | Displays the log.                                                   |
| gls   | `git log --topo-order --stat --pretty:format:"$_git_log_medium_format"`                     | Displays the stats log.                                             |
| gld   | `git log --topo-order --stat --patch --full-diff --pretty:format:"$_git_log_medium_format"` | Displays the diff log.                                              |
| glo   | `git log --topo-order --pretty:format:"$_git_log_oneline_format"`                           | Displays the one line log.                                          |
| glg   | `git log --topo-order --graph --pretty:format:"$_git_log_oneline_format"`                   | Displays the graph log.                                             |
| glb   | `git log --topo-order --pretty:format:"$_git_log_brief_format"`                             | Displays the brief commit log.                                      |
| glc   | `git shortlog --summary --numbered`                                                         | Displays the commit count for each contributor in descending order. |
| glS   | `git log --show-signature`                                                                  | Displays the log and checks the validity of signed commits.         |

### Merge (m)

| Alias | Command                 | Description                                                                                                                                  |
| ----- | ----------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| gm    | `git merge`             | Joins two or more development histories together.                                                                                            |
| gmC   | `git merge --no-commit` | Joins two or more development histories together but does not commit.                                                                        |
| gmF   | `git merge --no-ff`     | Joins two or more development histories together but does not commit generating a merge commit even if the merge resolved as a fast-forward. |
| gma   | `git merge --abort`     | Aborts the conflict resolution, and reconstructs the pre-merge state.                                                                        |
| gmt   | `git mergetool`         | Runs the merge conflict resolution tools to resolve conflicts.                                                                               |

### Push (p)

| Alias | Command                                                                                                        | Description                                                                                                          |
| ----- | -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| gp    | `git push`                                                                                                     | Updates remote refs along with associated objects.                                                                   |
| gpf   | `git push --force-with-lease`                                                                                  | Forcefully updates remote refs along with associated objects using the safer `--force-with-lease: ` option.          |
| gpF   | `git push --force`                                                                                             | Forcefully updates remote refs along with associated objects using the riskier `--force: ` option.                   |
| gpa   | `git push --all`                                                                                               | Updates remote branches along with associated objects.                                                               |
| gpA   | `git push --all && git push --tags`                                                                            | Updates remote branches and tags along with associated objects.                                                      |
| gpt   | `git push --tags`                                                                                              | Updates remote tags along with associated objects.                                                                   |
| gpc   | `git push --set-upstream origin "$(git-branch-current 2> /dev/null)"`                                          | Updates remote refs along with associated objects and adds _origin_ as an upstream reference for the current branch. |
| gpp   | `git pull origin "$(git-branch-current 2> /dev/null)" && git push origin "$(git-branch-current 2> /dev/null)"` | Pulls and pushes from origin to origin.                                                                              |

### Rebase (r)

| Alias | Command                    | Description                                                 |
| ----- | -------------------------- | ----------------------------------------------------------- |
| gr    | `git rebase`               | Forward-ports local commits to the updated upstream _HEAD_. |
| gra   | `git rebase --abort`       | Aborts the rebase.                                          |
| grc   | `git rebase --continue`    | Continues the rebase after merge conflicts are resolved.    |
| gri   | `git rebase --interactive` | Makes a list of commits to be rebased and opens the editor. |
| grs   | `git rebase --skip`        | Skips the current patch.                                    |

### Remote (R)

| Alias | Command                | Description                                           |
| ----- | ---------------------- | ----------------------------------------------------- |
| gR    | `git remote`           | Manages tracked repositories.                         |
| gRl   | `git remote --verbose` | Lists remote names and their URLs.                    |
| gRa   | `git remote add`       | Adds a new remote.                                    |
| gRx   | `git remote rm`        | Removes a remote.                                     |
| gRm   | `git remote rename`    | Renames a remote.                                     |
| gRu   | `git remote update`    | Fetches remotes updates.                              |
| gRp   | `git remote prune`     | Prunes all stale remote tracking branches.            |
| gRs   | `git remote show`      | Displays information about a given remote.            |
| gRb   | `git-hub-browse`       | Opens a remote on [GitHub][3] in the default browser. |

### Stash (s)

| Alias | Command                                           | Description                                                              |
| ----- | ------------------------------------------------- | ------------------------------------------------------------------------ |
| gs    | `git stash`                                       | Stashes the changes of the dirty working directory.                      |
| gsa   | `git stash apply`                                 | Applies the changes recorded in a stash to the working directory.        |
| gsx   | `git stash drop`                                  | Drops a stashed state.                                                   |
| gsX   | `git-stash-clear-interactive`                     | Drops all the stashed states.                                            |
| gsl   | `git stash list`                                  | Lists stashed states.                                                    |
| gsL   | `git-stash-dropped`                               | Lists dropped stashed states.                                            |
| gsd   | `git stash show --patch --stat`                   | Displays changes between the stash and its original parent.              |
| gsp   | `git stash pop`                                   | Removes and applies a single stashed state from the stash list.          |
| gsr   | `git-stash-recover`                               | Recovers a given stashed state.                                          |
| gss   | `git stash save --include-untracked`              | Stashes the changes of the dirty working directory, including untracked. |
| gsS   | `git stash save --patch --no-keep-index`          | Stashes the changes of the dirty working directory interactively.        |
| gsw   | `git stash save --include-untracked --keep-index` | Stashes the changes of the dirty working directory retaining the index.  |

### Submodule (S)

| Alias | Command                                     | Description                                                                  |
| ----- | ------------------------------------------- | ---------------------------------------------------------------------------- |
| gS    | `git submodule`                             | Initializes, updates, or inspects submodules.                                |
| gSa   | `git submodule add`                         | Adds given a repository as a submodule.                                      |
| gSf   | `git submodule foreach`                     | Evaluates a shell command in each of checked out submodules.                 |
| gSi   | `git submodule init`                        | Initializes submodules.                                                      |
| gSI   | `git submodule update --init --recursive`   | Initializes and clones submodules recursively.                               |
| gSl   | `git submodule status`                      | Lists the commits of all submodules.                                         |
| gSm   | `git-submodule-move`                        | Moves a submodule.                                                           |
| gSs   | `git submodule sync`                        | Synchronizes submodules' remote URL to the value specified in _.gitmodules_. |
| gSu   | `git submodule update --remote --recursive` | Fetches and merges the latest changes for all submodule.                     |
| gSx   | `git-submodule-remove`                      | Removes a submodule.                                                         |

### Tag (t)

| Alias | Command          | Description                  |
| ----- | ---------------- | ---------------------------- |
| gt    | `git tag`        | Lists tags or creates tag.   |
| gtl   | `git tag --list` | Lists tags matching pattern. |
| gts   | `git tag --sign` | Creates a signed tag.        |
| gtv   | `git verify-tag` | Validate a signed tag.       |

### Working directory (w)

| Alias | Command                                                                 | Description                                                                                    |
| ----- | ----------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| gws   | `git status --ignore-submodules:$_git_status_ignore_submodules --short` | Displays working-tree status in the short format.                                              |
| gwS   | `git status --ignore-submodules:$_git_status_ignore_submodules`         | Displays working-tree status.                                                                  |
| gwd   | `git diff --no-ext-diff`                                                | Displays changes between the working tree and the index (diff).                                |
| gwD   | `git diff --no-ext-diff --word-diff`                                    | Displays changes between the working tree and the index (word diff).                           |
| gwr   | `git reset --soft`                                                      | Resets the current HEAD to the specified state, does not touch the index nor the working tree. |
| gwR   | `git reset --hard`                                                      | Resets the current HEAD, index and working tree to the specified state.                        |
| gwc   | `git clean --dry-run`                                                   | Removes untracked files from the working tree (dry-run).                                       |
| gwC   | `git clean --force`                                                     | Removes untracked files from the working tree.                                                 |
| gwx   | `git rm -r`                                                             | Removes files from the working tree and from the index recursively.                            |
| gwX   | `git rm -r --force`                                                     | Removes files from the working tree and from the index recursively and forcefully.             |

### Shadows

The following aliases may shadow system commands:

- `gb` shadows the [GB][10].
- `gm` shadows the [GraphicsMagick image processor][11].
- `gpt` shadows the [GUID partition table maintenance utility][4].
- `gs` shadows the [Ghostscript interpreter and previewer][5].

If you frequently use the above commands, you may wish to remove said aliases
from this module or to disable them at the bottom of the zshrc with `unalias`.

You can temporarily bypass an alias by prefixing it with a backward slash:
`\gpt`.

[1]: https://www.git-scm.com