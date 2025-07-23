## THE ORIGIN
> JUL 08, 2025

I had the fortune of working with AOS/VS running on a Data General
minicomputer when I was 19 (last century, in 1989).
It had an editor called _sed (stream editor)_ which was similar to _vi_.
I had also used _vt100_ terminals on VAX/VMS.
I also used _ULTRIX_, _SunOS_ and _Solaris_ in the nineties and
a bit later, _Linux_.

When I first started using _neovim_ recently, it was on a macOS Terminal
that was limited to 256 colors (_xterm256_).
I was looking for a colorscheme I liked, but all the popular ones were
meant for _truecolor_ terminals.
I switched to a _WezTerm_ terminal and then was disappointed again
because the popular colorschemes were rather bloated.
I was intrigued by the rather minimal and dark
[khold](https://github.com/metalelf0/black-metal-theme-neovim)
and [yugen](https://github.com/bettervim/yugen.nvim).

Then I found [two-firewatch](../theme/firewatch/README.md).
I didn't particularly like the _light_ and _dark_ themes on _truecolor_,
but boy did I like the _dark_ theme on the macOS Terminal (xterm256).
I wanted the same colors on a truecolor terminal as well for consistent
experience.  It was minimal and showed signs of good taste, even though
I wouldn't exactly have made the same color choices myself.

The colorschemes that worked the same on _xterm256_ and _truecolor_
were often implemented using _vimscript_.
There were only a few good ones and were also hard to find.
Once discovered, the LSP diagnostics and git colors were either
not anticipated or defaulted.  The experience was a bit awkward.

### A LEARNING OPPORTUNITY

The customization bug that is common to all neovim users had bit me.
I wanted to create my own personal colorscheme.
It was an excellent opportunity learn _lua_ (the builtin customization
language for modern neovim).
So I decided to create a colorscheme that looks exactly the same on both
the macOS Terminal and WezTerm and hopefully on any kind of _Linux_ terminal.
I would work with the constraint of the fixed palette in _xterm256_.

I started with the color palette in _two-firewatch_.
Then I wanted to abstract out the theming so that it would be easy for me to
customize it.  I called the project _uniwatch_ because I wanted the same
(universal) color palette in the colorscheme whether on macOS Terminal or
any other that supports xterm256 colors including _truecolor_ terminals.

I was not too concerned about 16 color terminals at the time.
I handled the situation via _nvim.config_ by checking the terminal type
and switching to the system default when the terminal is neither xterm256
nor truecolor.  A _vt100_ like situation is not a daily experience and
if you find yourself logging into an external server and using some
version of _vi_, you are not usually _coding_ but doing some
_sysadmin_ work.

I reached the point of successfully achieving the same look
and feel on both _xterm256_ and _truecolor_ on macOS terminal and WezTerm.
Then I wanted to generalize the theming abstraction from there.
On a lucky coincidence, I found [apprentice](../theme/apprentice/README.md).
It worked the same on both the masOS Terminal and WezTerm.
The theming was also simpler than two-firewatch and easier on the eyes.
With this new found knowledge, I separated my abstraction into three concerns
(_palette_, _theme_ and _highlights_) and pivoted my work on the intended
primary personal colorscheme that I initially named _frontier_.
I always had the goal of generalization.

It turned out that I prefer simple yet sophisticated color usage.
It was also clear that I preferred _dark_ themes over _light_ themes.
This has influenced the semantics of the color mapping.

### PRIORITIES

The quality of a color scheme is not just how it looks on face value.
While that is also important, as a programmer's editor, it is vital that
syntactic nuances are handled elegantly and consistently.
Successful evolution and durability rest on supporting new languages and
new plugins quickly and easily.
Obviously, highlight groups are the key as all we are doing in the end
is choosing colors for the different highlight groups.
You need to centralize the highlight group profiles and allow the colors
and themes to impact them.

There is accidental adavantage triggered by certain imperative design
constraints.  The pertinent one here is the decision to limit the design
to the discrete _xterm256_ color palette.  The gluttonous approach would
have beeen to work with the almost unlimited choice and options provided
by the _truecolor_ palette.
This is tantamount to the difference in working with the digital versus
the analog spaces.  How many colors do you need to highlight code anyway?

You can use the variety of the rather limited spectrum of grey and other
colors provided by the xterm256 palette.  You can experiment with different
ones and pick what gives you the best aesthetics.
One level of indirection (the custom palette abstraction) will keep you
on good footing.
The mapping from the custom palette to the internal abstraction keeps
the semantics congruent and aligned.
The limited choices enable rapid selection and evolution.

### OUTCOME

Generally, a colorscheme design sticks to the same syntactic distinctions
and the number of colors used in every theme inside it.
I wanted my personal preferences in one primary theme.  At the same time,
I wanted to be able to recreate other themes I liked with the language
and plugin support accomodated in the same.

I decided to create a new colorscheme that supports multiple theming
abstractions.  This means the underlying internal abstraction must
be general enough and be quite a bit discerning.
I will not be able to integrate themes that I considered bloated,
but should be able to accomodate multiple simpler and elegant
themes.  Let's see where we get!
