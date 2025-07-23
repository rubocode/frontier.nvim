## TWO-FIREWATCH THEME
> JUL 08, 2025

URL: [https://github.com/rakr/vim-two-firewatch](https://github.com/rakr/vim-two-firewatch)  
ORIGIN: [**Ramzi Akremi**](https://github.com/rakr)
PALETTE: [image](palette.png)
EXTRACT: [two_firewatch.vim](two-firewatch.vim)

He was primarily targeting a refined visual experience on truecolor terminals.
But when I ran it on the macOS Terminal, it looked excellent and more importantly
it didn't go into the broken CRT TV mode.  So I studied the theme.

* It was developed in _vimscript_.
* It was primarily targeted for truecolor terminals with light and dark themes.
* The focus of the design was the color experience.
* It used a contrasting duotone color palette.

I wasn't quite attracted to the truecolor rendition of the design,
but was delighted with the derived dark version on xterm256.
I wished the same color experience was available on _truecolor_
also allowing me flexibility and a consistent experience on
different platforms — macOS, linux and the variety of portable
terminals supporting truecolor.

I had wanted to understand how to create a personalized colorscheme
for myself mainly because most of the popular colorschemes such as
_catppuccin_ and _tokyonight_ had too many colors for my taste.
More importantly, they didn't work on the macOS Terminal.
This is where the constraint to use only the xterm256 colors
was established.

* My original goal was to code _golang_ for a different purpose.
* A simple colorscheme would have sufficed anyway.
* Among other things, I also needed a better LSP experience.
* TWO-FIREWATCH was a bit dated.

I wanted to create a new one using _lua_ instead of _vimscript_ which
would allow me to learn to use **Lua** in a real life project as well.
