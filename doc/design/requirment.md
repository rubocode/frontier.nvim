## REQUIREMENT
> JUL 23, 2025

Initially, I just wanted to create a new colorscheme that I would personally
use on a daily basis.  This happened because I could not find one that I liked
enough.

I had to explore, test, design, implement and debug the work.
I would automate certain parts of the design and instrument the code
for better debugging.  I took the classic agile approach
(not the industrial flavor).  There were not daily standups.
I would just sit and talk to myself when necessary. ;)

But most of all I would have to capture the semantics (ligua franca)
of the problem dommain.  The technical term used for this these days
is DSL (Domain Specific Language).  If I capture the elements,
abstractions and mechanisms for the creation of colorshcemes,
I could create multiple colorschemes with ease.
The actual challenge then becomes one of aesthetics
instead of technology.

> Great designs come from great designers, not from great design processes.  
> **Frederick P. Brooks, Jr.**

So my goal was not to invent the fastest loading colorscheme, but to design the
most intuitive abstraction that captures the semantics of the problem domain
faithfully.

> Premature optimization is the root of all evil.  
> **Donald Knuth**

One can always generate the highlight groups into the colors folder and
you can load the colorscheme at lightening speed.  That means that you
would have to capture different versions at release times.  But my priority
here is to design the accurate machinery to solve the problem and not to deliver
the fastest loading colorscheme.  Besides, it was too early to judge how fast
it would load.  Thus, I decided to postpone that decision.  It was too early.

> There is nothing so useless as doing efficiently that
> which should not be done at all.  
> **Peter Drucker**

If you prefer a faster loading colorscheme, there are many options.
Everyone loves speed and most people offer speed.
Most are _truecolor_ only and look like a broken TV set on  xterm256.

The macOS Terminal provided better line spacing (easier to read and
generally healthier for the eyes) at the cost of not having the frames
of — for example — your _telescope_ float windows interrupted by tiny spaces.
The other _truecolor_ terminals including _iTerm_ abd _WezTerm_
have the frames look really good but code lines are squeezed togther.

Since the reason I use _neovim_ is to edit code and not to enjoy good
looking frames in floating windows, I preferred using the _macOS Terminal_.
At the same time, I wanted the color palette and feature support to be
portable across platforms.
