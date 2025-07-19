## DESIGN AND CONSIDERATIONS
> JUL 19, 2025

Initially, I just wanted to create a new colorscheme that I would personally
use on a daily basis.  This happened because I could not find one that I liked
enough.

I was new to **lua** but I was happy that it was more expressive than **vimscript**.
Not only was I learning lua but I was also trying to figure out how to integrate
a colorscheme into **neovim**.  I also didn't know how colorschemes for neovim were
organized.  So, what I had infront of me was an **experiment** where I would work
in [bottom up](https://rubocode.github.io/blog/2018-08-17/top-down-and-bottom-up)
fashion from prototype to finished product.

* [Elements](elements.md)
* [Origin](origin.md)
* [Strategy](strategy.md)

I had to explore, test, design, implement and debug the work.
I would automate certain parts of the design and instrument the code
for better debugging.  I took the classic agile approach
(not the industrial flavor).  There were not daily standups.
I would just sit and talk to myself when necessary. ;)

But most of all I would have to capture the semantics (ligua franca)
of the problem dommain.  The technical term used for this these days
is DSL (Domain Specific Language).  If I capture the elements, abstractions
and mechanisms for the creation of colorshcemes, I could create multiple
colorschemes with ease.  The actual challenge then becomes one of aesthetics
instead of technology.

> Great designs come from great designers, not from great design processes.  
> **Frederick P. Brooks, Jr.**

So my goal was not to invent the fastest loading colorscheme, but to design the
most intuitive abstraction that captures the sematics of the problem domain
faithfully.

> Premature optimization is the root of all evil.  
> **Donald Knuth**

I can always generate the highlight groups into the colors folder and you can
load the colorscheme at lightening speed.  That means that I would have to
capture different versions at release times.  But my priority here is to
design the accurate machinery to solve the problem and not to sell the fastest
loading colorscheme.  Thus, I will not generate the highlight files for the
colorschemes just yet.

> There is nothing so useless as doing efficiently that which should not be done at all.  
> **Peter Drucker**

If you prefer a faster loading colorscheme, you can use **catppuccin**
or **miniwinter**.  They just look crappy on my Mac Terminal (xterm256).
The colors are either too limited or the editor goes into the mode of
a broken CRT television set.
The Mac Terminal provides better line spacing (easier to read and
generally healthier for the eyes) at the cost of not having the frames
of your **telescope** float windows interrupted by tiny spaces.
The other **truecolor** terminals including **iTerm** abd **WezTerm**
terminals have the frames look really good but code lines
are squeezed togther.

Since the reason I use **neovim** is to edit code and not to enjoy good looking
frames of floating windows, I prefer using the **Mac Terminal**.
And I don't like cats all that much, and winters are also kind of meh!. ;)
