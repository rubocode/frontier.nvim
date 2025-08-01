# frontier.nvim
A neovim colorscheme with themes that look identical on xterm256 and truecolor terminals

> [Design Documents](doc/design/README.md)  
> This is a work in progress!

There is a handful of colorscheme designs here.  They use different palettes
and different choices (theming abstractions) in injecting those colors into
the highlight scheme which support _standard_ neovim highlighting and _custom_
plugin support.  It seemed a good idea to centralize and stabilize the highlight
definitions in order that all themes (colorschemes) benefited when a new plugin
was added to the ones that were chosen to be included.

## frontier
This is the theme I wanted to create for my regular personal use.
The color palette was not fixed upfront as along as each color was
one of the standard xterm256 colors.  This flexibility was kept so that
any nuances in syntax and user interface elements could be accommodated
when discovered.  This was the reason it was named _frontier_.

## frontier-firewatch
This is intended to satify my initial need to bring _two-firewatch (dark)_
onto _truecolor_ terminals for a consistent portable experience.
I still find the rather simple color palette and the design choices
in _two-firewatch_ appealing although of a different taste.

## frontier-apprentice
This is intended as an example of using an existing color palette that turned
out to meet aesthetic considerations but were either based on _vimscript_ or
did not fully support the desired features (such as proper _LSP_ support) or
the desired plugins.  This also helps validate the internal abstraction.

## INSTALLATION
```lua
{
    "rubocode/forntier.nvim",
    lazy = false,
    config = function()
    end,
}
```

## NOTE

You may appreciate the different flavors and even the internal organization.
It uses a different approach.
Perhaps you would like to use this project as the basis for experimenting
with your own preferred color selection.

> Perfection is achieved, not when there is nothing more to add,
> but when there is nothing left to take away.  
> **Antoine de Saint-Exupery**

Enjoy!
