## STANDARD NEOVIM HIGHLIGHT GROUPS
> JUL 10, 2025

**URL**: [https://github.com/neovim/neovim/blob/master/runtime/colors/vim.lua](https://github.com/neovim/neovim/blob/master/runtime/colors/vim.lua)  
**LICENSE**: NEOVIM is licensed under Apache License 2.0 (Copyright Neovim contributors)

The above is where all the standard highlight groups are defined.
The copy of [vim.lua](vim.lua) in this local folder is a snapshot taken on JUL 10, 2025.
This is vim's default colorscheme and it does not define _Normal_.

This file removes a lot of the confusion and provides a good understanding of how the defaults
were meant to be linked together.  It helps you avoid unnecessary explicit redefinitions
of many different highlight groups.

### References

* [Semantic Highlighting in Neovim](https://gist.github.com/swarn/fb37d9eefe1bc616c2a7e476c0bc0316)
* [Linking LSP Semantic Token Groups to Treesitter Groups](https://github.com/neovim/neovim/pull/22981)
