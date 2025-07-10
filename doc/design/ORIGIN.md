## THE ORIGIN OF THE UNIWATCH COLORSCHEME
> JUL 08, 2025

When I first started using _neovim_, it was on a macOS Terminal that was limited
to 256 colors (_xterm256-color_).  I was looking for a colorscheme I liked, but
all the popular ones were for _truecolor_ terminals.

I switched to a _WezTerm_ terminal and then was disappointed again because
the popular colorschemes were rather bloated.  I was intrigued by the
rather minimal and dark [khold](https://github.com/metalelf0/black-metal-theme-neovim)
and [yugen](https://https://github.com/bettervim/yugen.nvim).

Then I found [two-firewatch](https://github.com/rakr/vim-two-firewatch).  I didn't
particularly like the _light_ and _dark_ themes on _truecolor_, but boy did I like
the _dark_ theme on my macOS Terminal (xterm256).  I wanted the same theme on truecolor
as well for consistent experience.
Much later, I discovered [Apprentice](https://github.com/romainl/Apprentice), 
a dark low contrast colorscheme.

The colorschemes that worked the same on _xterm256_ and _truecolor_ were often
implemented using _vimscript_.  The customization bug that is common to all neovim
users had bit me.  I wanted to create my own personal colorscheme.
It was an excellent opportunity learn _lua_ (the builtin customization language
for modern neovim).

It turned out that I prefer simple yet sophisticated color usage.  

### A LEARNING OPPORTUNITY

So I decided to create a colorscheme that looks exactly the same on both the macOS Terminal
and WezTerm.  I started with the color palette in _two-firewatch_.  Then I wanted to
abstract out the theming so that it would be easy for me to customize it.

I called the project _UNIWATCH_ because I wanted the same (universal) color palette in the
colorscheme whether on macOS Terminal or any other that supports xterm256 colors including
truecolor terminals.

I was not too concerned about 16 color terminals at the time.  I handled the situation
via _nvim.config_ by checking terminal type and switching to the system default when
the terminal is not either xterm256 or truecolor.

I reached the point of successfully achieving the same look and feel on both _xterm256_
and _truecolor_ on macOS terminal and WezTerm.

Now I wanted to generalize the theming abstraction from there.  Then I found
_Apprentice_ by **Romain Lafourcade**.
It worked the same on both the masOS Terminal and WezTerm.  The theming in
apprentice was simpler than two-firewatch.

With this new found knowledge, I simplified my abstraction into two separate concerns
(_colors_ and _theme_) and started work on my intended primary personal colorscheme
that I initially named _frontier_.  I always had the goal of generalization.

### PRIORITIES

The important thing in the color scheme is not just how it looks on face value.
While that is also important, as a programmer's editor, it is vital that syntactic
nuances are handled elegantly and consistently.  Successful evolution and durability
rest on supporting new languages and new plugins quickly and easily.
So highlight groups are pivotal.  You need to centralize the highlight
group profiles and allow the color scheme theme to impact it.

### APPROACH

There are three basic approaches to the design problem:  

* Centralize the highlight groups in a separate project (repository)
and consider the color theme and profiles as a dependency.
(This is a bit cumbersome, but it is the generic treesitter like approach).

* Keep the highlight groups centralized in the same repository and asbtract
it out so that multiple color themes can reside on the same repository
(This is the middle ground).

* Just define one colorscheme coupled to the highlight groups in the
same repository.

It turns out that the best approach is to start from the last above and move
upwards (remember how a whole bunch of smart guys tried to design **multics**
first resulting in failure and a couple of guys at Bell Labs created **unix**
sometime later!).
[Bottom up](https://rubocode.github.io/blog/2018-08-17/top-down-and-bottom-up)
is a good approach in creative endeavors.

### GOALS

I would be happy if I could create this handful of colorschemes with a single
theming abstraction that is customized to accomodate multiple palettes.  

They use different palettes and different choices (theming abstractions) in
injecting those colors into the highlight scheme which support _standard_
neovim highlighting and _custom_ plugin support.  It seemed a good idea to
centralize and stabilize the highlight definitions in order that all themes
(colorschemes) benefited when a new plugin was added to the ones that were
chosen to be included.

## frontline
This is where I allow myself more freedom to experiment with a fancier color palette.
Whatever I learn here gets translated into the minimal fixed palettes of the other
colorschemes.

## nightwatch
This is intended to satify my earlier need to bring _two-firewatch_ onto _truecolor_
terminal.  I still find the rather simple color palette and the design choices
in _two-firewatch_ appealing.

## watchprentice
This is intended as another example of using an existing color palette that fully
supports the chosen features (such as proper _LSP_ support) and chosen plugins
that I would use.

## neowatch
Along the way I discovered that there is a standard colorscheme for modern neovim
that uses a color palette with a few more than 16 colors.  I wasn't sure how this
translates into a legacy terminal type.  But, I thought it might be interesting
to design a colorcheme by restricting myself to just those 20 colors.

### RATIONALE

I hope you will enjoy the different falvors and also the internal design and
structure.  This isn't a colorschene that is done all in one file.
The different abstractions and semantics employ a folder structure that I found intuitive.

My goal wan't to create the fastest colorscheme on the planet, but to create
something that I can tweak and improve efficiently.

This lua code is meant to be robust and resilient and to allow for flexible
adjustment.  It was not meant to load faster.  Your mileage may vary.

> Data dominates. If you’ve chosen the right data structures and organized
> things well, the algorithms will almost always be self-evident.
> Data structures, not algorithms, are central to programming.  
> **Rob Pike**

Things don't have to get more complicated than they need to be.
Personal discretion is of the essence.

> The unavoidable price of reliability is simplicity.  
> **C.A.R. Hoare**

User experience is the key! and I am the primary user of this
colorscheme.  There may be better ways of doing this.
But I am merely being pragmatic here.

### CONCLUSION

When I am done with these, I would have created a colorscheme I would
personally use and will have created a general color mapping abstraction with
up-to-date feature support.

> Once you start thinking more about where you want to be than about
> making the best product, you’re screwed.  
> **Linus Torvalds**  

Let's just start with one colorscheme with the designesired features and functionality
first and see how we can generalize it later.  A modular design approach will
certainly help.

