# vim-makefile-manager

Vim plugin that provides commands to switch between different Makefiles.

## Demo

![Image](https://github.com/gogoprog/vim-makefile-manager/raw/master/demo.gif)

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
| MakefileManagerSelect | Select the Makefile using `fzf`         |
| MakefileManagerMake   | Execute :Make for the selected Makefile |


## License

Copyright (c) Gauthier Billot.  Distributed under the same terms as Vim itself.
See `:help license`.
