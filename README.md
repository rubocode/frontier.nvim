# frontier.nvim
A collection of colorschemes that look identical both on xterm256 and truecolor terminals

> This is a work in progress!

There is a handful of colorscheme designs here.  They use different palettes
and different choices (theming abstractions) in injecting those colors into
the highlight scheme which support _standard_ neovim highlighting and _custom_
plugin support.  It seemed a good idea to centralize and stabilize the highlight
definitions in order that all themes (colorschemes) benefited when a new plugin
was added to the ones that were chosen to be included.

## frontier
This is where I allow myself more freedom to experiment with a fancier color palette.
Whatever I learn here gets translated into the minimal fixed palettes of the other
colorschemes.

## frontier-firewatch
This is intended to satify my earlier need to bring _two-firewatch (dark xterm256)_
onto _truecolor_ terminals.  I still find the rather simple color palette and
the design choices in _two-firewatch_ appealing.

## frontier-apprentice
This is intended as another example of using an existing color palette that fully
supports the chosen features (such as proper _LSP_ support) and chosen plugins
that I would use.

## frontier-neoterm
Along the way I discovered that there is a standard colorscheme for modern neovim
that uses a color palette with a few more than 16 colors.  I wasn't sure how this
translates into a legacy terminal type.  But, I thought it might be interesting
to design a colorcheme by restricting myself to just those 20 colors.

I hope you will enjoy the different flavors and also the internal organization.
Perhaps you would like to use this project as the basis for experimentation with
your own preferred color palette.

Knock yourself out!
