# awesome-mac-things

some useful things in MAC OS.

- scripts
- shells
- tips of some common useful apps

## Requirement

- Linux
- Mac
- git1.7+

## Install

Three methods:

- `curl -s "https://raw.githubusercontent.com/superhj1987/awesome-mac-things/master/get.sh" | bash -s`
- Download the source and `make install`
- Download the source and set `bin` to the System Path to use the common usage shells

## Uninstall

mthings uninstall

## Usage

* `mthings`
> show system command

* `mtings list`
> show command list

* `mthings update`
> update mthings

* `mthings show_doc [doc_name]`
> show the contents of the specified doc 

## Docs and Commands

### :coffee: Document

* `useful_shells`
> some mac useful shells

* `shortcut_keys_intro`
> introduce mac shortcut keys

* `st_shortcut_keys`
> SublimeText2 shortcut keys

* `zsh_tips`
> zsh useful tips

* `ssh_timeout_solution`
> solution of ssh timeout

### :coffee: bin

* `show_memory_usage`
> show memory usage in python`

* `git_init`
> init git repository
> 
> **Usage**: `git_init [git_repos_url] [to_dir]`
> 
> **Option**:
>
> - when ***git_repos_url*** is empty，init .gitignore, otherwise clone the repository to [to_dir]，and int .gitignore
> - when ***to_dir*** is empty, the to_dir is the end of the git_repos_url,for example **mac_useful_thins.git**
>
> **Example**:
>
> `git_init git@github.com:superhj1987/mac_useful_things.git mac_useful_things`

* `rm_ds`
> delete .DS_Store in current dir

* `show_net_stats`
> show the count of each status connection,including time_wait、close_wait and so on.

- `generate_md_contents`
> generate the contents of a markdown doc.The doc's format meets:the first line is the title:# [title],the other title such as ##,###,####... is the contents and there must be a blank between #,##,###... and title text. The example docs are in the **test** dir.
>
> **Usage**: `generate_md_contents [-a] doc_name [to_doc_name]`
>
> **Option**:
>
> - ***-a*** means generate the contents with append the anchor to the sub title.
> - when ***to__doc_name*** is empty，the generate content will overwrite the ***doc_name*** file, otherwise the content will be in the ***to__doc_name*** file.
>
> **Example**:
>
> `generate_md_contents ../test/test_doc.md test__doc_with_contents.md`

* `change_git_origin_remote`
> change current origin remote repos to a new  url 
>
> **Usage**: `change_git_origin_remote [new_git_repos_url]`

* `word_count`
> get the word total count in a doc
>
> **Usage**: `word_count [doc_name]`