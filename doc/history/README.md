## THE ORIGIN OF THE UNIWATCH COLORSCHEME
> JUL 08, 2025

The initial problem I had was not having a decent colorscheme for the Terminal on macOS.
It was limited to the 256 standard colors of xterm (xterm256-color).

Eventually I found a colorscheme I liked.  That was the xterm256 scheme provided by
[vim-two-firewatch](two-firewatch/README.md).

However, what they really intended to provide was its truecolor colorscheme.
When I switched from macOS Terminal to WezTerm, the colorscheme looked veru different.

So I decided to create a colorscheme that looks exactly the same on both the macOS Terminal
and WezTerm.  I started with the color palette in **two-firewatch**.  Then I wanted to
abstract out the theming so that it would be easy for me to customize it.

I called the project UNIWATCH because I wanted the same (universal) color palette in the
colorschme whether on macOS Terminal or any other that supports xterm256 colors including
truecolor terminals.

I was not too concerned about 16 color terminals at the time.  I handled the situation
via **nvim.config** by checking terminal type and defaulting to the system default when
the terminal is not either xterm256 or truecolor.

I reached the point of reproducing the original xterm256 colorscheme and guess what,
it looked the same on macOS terminal and WezTerm.

Now I wanted to generalize theming abstraction from there.  Then I found
[**Apprentice**](https://github.com/romainl/Apprentice) by **Romain Lafourcade**.
It worked the same on both the masOS Terminal and WezTerm.  The theming in
**Apprentice** was simpler than **two-firewatch**.

With this new found knowledge, I simplified my theming abstraction and started work
on this colorscheme named initially named **frontier**.

I have now named the project to its original name
[**uniwatch**](https://github.com/rubocode/uniwatch.nvim).

The important thing in the colorscheme is not just how it looks on face value.
While that is also improtant, as a programmer's editor, it is vital that syntactic
nuances are handled elegantly and consistently.

Evolution over time rests on supporting new languages and new plugins.
So highlight groups are central.  You need to centralize the highlight
group profiles and allows the colorscheme theme to impact it.

There are three basic approaches to the design problem:  

* Centralize the highlight groups in a separate project (repository)
and use it as a dependency to the color themes (This is a bit cumbersome,
but it is the generic treesitter like approach).

* Keep the highlight groups centralized in the same repository and asbtract
it out so that multiple color themes can reside on the same repository
(This is the middle ground).

* Just define one colorscheme coupled to the highlight groups in the
same repository.

It turns out that the best approach is to start from the last above and move
upwards (remember how they tried **multics** first and failed and a couple of
guys created **unix** later!).
[Bottom up](https://rubocode.github.io/blog/2018-08-17/top-down-and-bottom-up)
is a good approach in creative endeavors.

I would be happy if I could create three themes:  

### frontier
This is the one I would use on a day to day basis and will get priority treatment.

### firewatch
There is a unique appeal to the simple dark color palette in two-firewatch and
I would be able to add LSP and other goodies in common with frontier.

### apprentice
This is particularly decent due to the simplicity of the color pallette
except for that rather bright yellow.

When I am done with these three, I would have created a colorscheme I would
personally use and will have created a general color mapping abstraction with
up-to-date feature support.

> Once you start thinking more about where you want to be than about
> making the best product, you’re screwed.  
> **Linus Torvalds**  

Let's see where we get!
