## XTERM256 COLORS

The initial problem I had was not having a decent colorscheme for the Terminal on macOS.
It was limited to the 256 standard colors of xterm (xterm256-color).

Eventually I found a colorscheme I liked.  That was the xterm256 scheme provided by
[vim-two-firewatch](two-firewatch/README.md).

However, what they really intended to provide was its truecolor colorscheme.
When I switched from macOS Terminal to WezTerm, the colorscheme looked veru different.

So I decided to create a colorscheme that looks exactly the same on both the macOS Terminal
and WezTerm.  I started with the color palette in **two-firewatch**.  Then I wanted to
abstract out the theming so that it would be easy for me to customize it.

I reached the point of reproducing the original xterm256 colorscheme and guess what,
it looked the same on macOS terminal and WezTerm.

Now I wanted to generalize theming abstraction from there.  Then I found
[**Apprentice**](https://github.com/romainl/Apprentice) by **Romain Lafourcade**.
It worked the same on both the masOS Terminal and WezTerm.  The theming in
**Apprentice** was simpler than **two-firewatch**.

With this new found knowledge, I simplified my theming abstraction and started work
on this colorscheme name [**frontier**](https://github.com/rubocode/frontier.nvim).

### COLORSCHEMES

* [Apprentice](apprentice/README.md)
* [two-firewatch](two-firewatch)

### PALETTES

* [neovim](neovim/README.md)
* [xterm256](xterm256/README.md)

