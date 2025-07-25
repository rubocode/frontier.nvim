## COLOR PALETTE
> JUL 24, 2025

It was useful, at the beginning of the project, to define a simple
and direct color palette consisting of the primary colors in the
problem space (color terminals in general and xterm256 terminals
in particular). A very small subset of the colors _grey_, _red_,
_green_, _blue_, _cyan_ and _yellow_ were adopted.

The goal of having the same colors on both _xterm256_ and
_truecolor_ terminals was achieved early using colors outside
the basic 16 colors.  The facilitation of a second theme 
introduced the problem of sharing a global color palette versus
keeping a local and private color palette with each theme.
Upto a certain stage the selected shared subset was used
as a default.

Once a useful mapping abstraction was reached, it appeared
wise to have each separate theme define itself a private
palette and have the color mapping into the internal
abstraction (the _archetype_) derived in terms of that palette.
This helps localize the color relationships and allows clarity
and flexibility in designing a new theme.
You simply pick the colors for your palette from the standard
_xterm256_ palette and stick with the original constraint
of using _xterm256_ colors exclusively.

Then, we stop making direct use of the default global
palette as we did ealier.
It turns out to be much cleaner to use only the color
mapping abstraction (the _archetype_) to define the
_profiles_ and the _highlights_.
We can still define the local custom color palette for
a theme in terms of the available global defaults
in tandem with the standard _xterm256_ definitions.
But, we avoid using them directly in the the _archetype_.
It is a cleaner options for the archetype to depend
solely on the aesthetic choices in the specific palette
chosen for the theme.

This allows the color abstraction to evolve naturally to
accomodate the distinctions chosen to be made visible in
the _editor_ and the _code_.  This enables a coherent
and simple representation — an _archetype_ (an effective
abstraction or model in other words).

We avoid incorporating all possible distinct syntax elements
in supporting the set of programming languages we choose
to accomodate.  In fact, this has been the chosen strategy
in _neovim_ from the beginning.  Linking any syntax
corresponding to _bultin_ aspects of the language such
as standard library functions to the _Special_
highlight group provides a familiar interpretation for
the programmer — introducing simplicity, elegance,
consistency and stability across the languages.

> Make it simple, as simple as possible, but no simpler.  
> **Albert Einstein**

We now use 256 colors instead of just the basic 16 and at the
same time avoid the plethora of colors in the 24-bit continuum.
This is an instance where the middle ground is quite a bit
more effective than a limited or an expansive mindset
in color selection.
