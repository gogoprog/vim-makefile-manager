# vim-makefile-manager

Vim plugin that provides commands to switch between different Makefiles.

## Demo

![Image](https://github.com/gogoprog/vim-makefile-manager/raw/master/demo.gif)

## Introduction

I made this plugin because of the following reasons:
- I work with projects containing several Makefiles
- I do no want to configure Vim for each project
- I want the quickfix list to be functional after `make` has been called

vim-makefile-manager offers an efficient way to select a Makefile using `fzf`. Then this Makefile will be called using a relative path: `:Make -C <path/to/selected/makefile>`.  This way of calling the Makefile ensures the Vim quickfix list will be functional. I always keep the project root directory as the current working directory.

Finally I like to set keyboard shortcuts in my `.vimrc` to use this plugin: `F7` to build and `Shift-F7` to select the Makefile.

## Requirements

  * [fzf](https://github.com/junegunn/fzf)
  * [vim-dispatch](https://github.com/tpope/vim-dispatch)

## Installation

### Vundle

Add the following line to ```.vimrc```

    Plugin 'gogoprog/vim-makefile-manager'

## Commands

| Name                  | Description                             |
|-----------------------|-----------------------------------------|
| `:MakefileManagerSelect` | Select the Makefile using `fzf`         |
| `:MakefileManagerMake`   | Execute `:Make` for the selected Makefile |


## License

Copyright (c) Gauthier Billot.  Distributed under the same terms as Vim itself.
See `:help license`.
