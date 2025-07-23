## APPROACH 
> JUL 08, 2025

There are essentially three approaches to the design problem:  

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

### RATIONALE

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
