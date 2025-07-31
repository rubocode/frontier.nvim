## GOALS 
> JUL 22, 2025

I would be happy if I could create a handful of colorschemes with
a single theming abstraction (an _archetype_) that is customized
to accomodate multiple palettes.
We will use different palettes and different choices (colors and themes)
and map it into the _archetype_ and inject those color choices into the
highlight scheme which supports _standard_ neovim highlighting and
_custom_ plugins.

It seemed a good idea to centralize and stabilize the highlight
definitions and link them via a dynamic internal abstraction
(an _archetype) in order that all themes (colorschemes) benefited
when a new plugin or a new neovim feature was added
to the ones that were chosen to be included.

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
that I would use.  Doing this would help solidify the internal abstraction
and the design choices.

## frontier-neoterm
Along the way I discovered that there is a standard colorscheme for modern neovim
that uses a color palette with a few more than 16 colors.  I wasn't sure how this
translates into a legacy terminal type.  But, I thought it might be interesting
to design a colorcheme by restricting myself to just those 20 colors.
This, however, is for a second stage.

### RATIONALE

This isn't a colorscheme that is done all in one file.
Instead, it is an experiment on how to design the mechanics
of colorscheme creation.  The internal abstractions and the
semantics were the objects of interest.

The goal wasn't to create the fastest colorscheme on the planet,
but to create something that I can tweak and improve efficiently.
The _lua_ code base is meant to be robust and resilient and to allow
for flexible adjustment.
Your mileage may vary.

The different abstractions and semantics employ a folder structure
that I found intuitive.  To maintain acceptable loading performance,
this structure heavily relies on the design decision in _lua_ that
the _require_ function guarantees that any lua file is loaded
just once.

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

When I am done with these, I would have created a colorscheme
I would personally use and evolved a mapping abstraction with
up-to-date feature support with the ability tinker with easily
and adapt rapidly with future changes.  It is also a goal to
keep it as simple as possible, but no simpler.

> Once you start thinking more about where you want to be than about
> making the best product, you’re screwed.  
> **Linus Torvalds**  

Let's just start with one colorscheme with the desired features and
functionality first and see how we can generalize and optimize it later.
A modular design approach will certainly help.
