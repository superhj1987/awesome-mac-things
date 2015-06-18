# mac_useful_things

some useful things in MAC OS.

- scripts
- shells
- tips of some common useful apps

**PS: u can set `bin` to the System Path to use the common usage shells**

## useful_shells.sh

**Description**：some mac useful shells

## shortcut_keys_intro.md

**Description**: introduce mac shortcut keys

## st_shortcut_keys.md

**Description**: SublimeText2 shortcut keys

## zsh_tips.md

**Description**: zsh useful tips

## bin

### memory_usage.py

----------------------

**Description**：show memory usage in python

### git_init

----------------------

**Description**: init git repository

**Usage**: git_init [git_repos_url] [to_dir]

**Option**:

- when ***git_repos_url*** is empty，init .gitignore, otherwise clone the repository to [to_dir]，and int .gitignore
- when ***to_dir*** is empty, the to_dir is the end of the git_repos_url,for example ***mac_useful_thins.git***

**Example**:

	git_init git@github.com:superhj1987/mac_useful_things.git mac_useful_things

### rm_ds

----------------------

**Description**: delete .DS_Store in current dir
