## THE ORIGIN
> JUL 08, 2025

I had the fortune of working with using AOS/VS running on a Data General
minicomputer when I was 19 (last century, in 1989).
It had an editor called _sed (stream editor)_ which was similar to _vi_.
I had also used _vt100_ terminals on VAX/VMS.
I also used _ULTRIX_, _SunOS_ and _Solaris_ in the nineties and
a bit later, _Linux_.

When I first started using _neovim_ recently, it was on a macOS Terminal
that was limited to 256 colors (_xterm256-color_).
I was looking for a colorscheme I liked, but all the popular ones were
meant for _truecolor_ terminals.

I switched to a _WezTerm_ terminal and then was disappointed again
because the popular colorschemes were rather bloated.
I was intrigued by the rather minimal and dark
[khold](https://github.com/metalelf0/black-metal-theme-neovim)
and [yugen](https://github.com/bettervim/yugen.nvim).
Then I found [two-firewatch](../theme/firewatch/README.md)

I didn't particularly like the _light_ and _dark_ themes on _truecolor_,
but boy did I like the _dark_ theme on my macOS Terminal (xterm256).
I wanted the same colors on a truecolor terminal as well for consistent
experience.

The colorschemes that worked the same on _xterm256_ and _truecolor_
were often implemented using _vimscript_.
They were only a few good ones and were also hard to find.
When found, the LSP diagnostics and git colors were either
not anticipated or defaulted.

The customization bug that is common to all neovim users had bit me.
I wanted to create my own personal colorscheme.
It was an excellent opportunity learn _lua_ (the builtin customization
language for modern neovim).

### A LEARNING OPPORTUNITY

So I decided to create a colorscheme that looks exactly the same on both
the macOS Terminal and WezTerm and hopefully on any kind of _Linux_ terminal.

I started with the color palette in _two-firewatch_.
Then I wanted to abstract out the theming so that it would be easy for me to
customize it.  I called the project _UNIWATCH_ because I wanted the same
(universal) color palette in the colorscheme whether on macOS Terminal or
any other that supports xterm256 colors including truecolor terminals.

I was not too concerned about 16 color terminals at the time.
I handled the situation via _nvim.config_ by checking the terminal type
and switching to the system default when the terminal is neither xterm256
nor truecolor.  I reached the point of successfully achieving the same look
and feel on both _xterm256_ and _truecolor_ on macOS terminal and WezTerm.

Now I wanted to generalize the theming abstraction from there.  Then I found
[Apprentice](../theme/apprentice/README.md).
It worked the same on both the masOS Terminal and WezTerm.
The theming was also simpler than two-firewatch.
With this new found knowledge, I separated my abstraction into three concerns
(_palette_, _theme_ and _highlights_) and pivoted my work on the intended
primary personal colorscheme that I initially named _frontier_.
I always had the goal of generalization.

It turned out that I prefer simple yet sophisticated color usage.
It was also clear that I preferred _dark_ themes over _light_ themes.
This has influenced the semantics of the color mapping.

### PRIORITIES

The important thing in the color scheme is not just how it looks on face value.
While that is also important, as a programmer's editor, it is vital that
syntactic nuances are handled elegantly and consistently.
Successful evolution and durability rest on supporting new languages and
new plugins quickly and easily.
Obviously, highlight groups are the key as all we are doing in the end is
choosing colors for the different highlight groups.
You need to centralize the highlight group profiles and allow the colors
and themes to impact them.

There is accidental adavantage triggered by certain imperative design
constraints.  The pertinent one here is the decision to limit the design
to the discrete _xterm256_ color palette.  The gluttonous approach would
have beeen to work with the almost unlimited choice and options provided by
the _truecolor_ palette.
This is tantamount to the difference in working with the digital versus the
analog spaces.  How many colors do you need to highlight code anyway?

You can use the variety of the rather limited spectrum of grey and other
colors provided by the xterm256 palette.  You can experiment with different
ones and pick what gives you the best aesthetics.
One level of indirection (the custom palette abstraction) will keep you
on good footing.
The mapping from the custom palette to the internal abstraction keeps
the semantics congruent and aligned.
The limited choices enable rapid selection and evolution.

### APPROACH

There are three basic approaches to the design problem:  

* Centralize the highlight groups in a separate project (repository)
and consider the color choices and the feature support as separate mutually
dependent concerns. (This is a bit cumbersome, but it is the generic treesitter
or LSP like approach where a certain kind of intelligence is isolated in a
single location along the lines of the DRY principle).

* Keep the highlight groups centralized in the same repository and asbtract
it out so that multiple colors and themes can reside on the same repository
(This is the middle ground).

* Just define one colorscheme coupled to the highlight groups in the
same repository.

It turns out that the best approach is to start from the last above and move
upwards.  Remember how a whole bunch of smart guys tried to design
_multics_, resulting in failure.
Later, a couple of guys at Bell Labs created _unix_!

> I am a very bottom-up thinker.  
> **Ken Thompson**

[Bottom up](https://rubocode.github.io/blog/2018-08-17/top-down-and-bottom-up)
is a good approach in creative endeavors.

### GOALS

I would be happy if I could create this handful of colorschemes with
a single theming abstraction that is customized to accomodate multiple palettes.
They will use different palettes and different choices (colors and themes)
in injecting those colors into the highlight scheme which support _standard_
neovim highlighting and _custom_ plugins.  It seemed a good idea to
centralize and stabilize the highlight definitions link them via a dynamic
internal abstraction in order that all themes (colorschemes) benefited when
a new plugin or a new neovim feature was added to the ones that were
chosen to be included.

At this point I switched from _UNIWATCH_ to _FRONTIER_ as the name of the project.

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
This, however, is for a second stage.

### RATIONALE

I hope you will appreciate the different flavors and also the internal design
and structure.  This isn't a colorscheme that is done all in one file.
The different abstractions and semantics employ a folder structure that
I found intuitive.  To maintain acceptable loading performance,
this structure heavily relies on the design decision in _lua_ that
the _require_ function guarantees that any lua file is loaded
just once.

My goal wasn't to create the fastest colorscheme on the planet,
but to create something that I can tweak and improve efficiently.
This lua code is meant to be robust and resilient and to allow
for flexible adjustment.  It was not meant to load faster,
even though it does that as well.
Your mileage may vary.

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

### ASPIRATION 

When I am done with these, I would have created a colorscheme I would
personally use and will have created a general color mapping abstraction with
up-to-date feature support.

> Once you start thinking more about where you want to be than about
> making the best product, you’re screwed.  
> **Linus Torvalds**  

Let's just start with one colorscheme with the desired features and
functionality first and see how we can generalize and optimize it later.
A modular design approach will certainly help.
