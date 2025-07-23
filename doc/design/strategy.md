## DESIGN STRATEGY
> JUL 10, 2025

Supporting more than one theme requires dynamic binding of some sort
and one of the methods seemed to be to call a function with the theme
as a parameter and get back color-infused highlight group definitions.
Many people define a fully inclusive theming abstraction ripe with
elements called _theme.ui.bg1_ and _theme.ui.fg7_.
The numbering helps to identify the same thing on both a _light_
and _dark_ version of the same colorscheme.  However, this
is a semantically deprived approach.

The design constraint to stick to dark themes allows the semantics
to be much more intuitive.  I could benefit from _grey.Normal_,
_grey.Darker_ and _grey.Lighter_.  I could also use _text.Normal_,
_text.Quiet_ and _text.Loud_ and know what that looks like on
the screen.  How cool is that!

Another crucial yet obvious design decision was due to my inherent
hatred of placing all parts of my abstraction in one file.
One might think that this comes from doing time in object oriented
projects for too long.  But that is not the case.
I wanted to deal with the problem in a more intuitive modular style.

We are _unix_ programmers after all.  We prefer specialized distributed
intelligence over complex and unwieldy centralized intelligence.
We use focused tools and piping (in essence, specialized small functions
and interfaces) instead of bloated monoliths (huge long functions
dealing with too many unrelated shared variables inside one scope).

Even _Bjarne Stroustrup_ gave up on writing his monolithic tomes on
_The C++ Programming Language_ after four editions.
His second edition and the Annotated Reference Manual (ARM) were just
the right size in the early nineties.
Then there was the quite excellent _The Design of the C++ Programming
Language_ which was also just the right size.
Standardization invited him to cater to everyone's whims and demands.
C++ became _A Centralized Design by Committee Endeavor_
and lost focus. It simply got out of hand.  Bjarne was aided by
_Herb Sutter_ of Microsoft lineage.

> If you think it's simple, you have misunderstood the problem.  
> **Bjarne Stroustrup**

Google began as primarily a _linux/c++_ shop due to the initial choices
of _Larry Page_ and _Sergey Brin_ during the startup stage.
They were suffering the consequences of accidental complexity and
the instability of the C++ standard.
They hired _Ken Thompson_ — the original designer of the _unix_
operating system — to come up with a solution.
The problem space was even more complicated by the more recent
multi-core hardware including GPUs.
But _Ken_ didn't shoot for an even more complex language.
He trodded in the opposite direction.
The result was _golang_, a simpler and more stable language with
an ingrained modular architecture.
Ken was aided by _Rob Pike_ who was also a former _Bell Labs_
colleague.

This is the difference between a nuanced and elegant approach
versus a brute force approach.
If you are in a mighty hurry and have no time to contemplate
the fitting abstractions and their relationships to enable
you to dissect the problem down into focused components,
you end up with a rushed design.
There is always someone rushing you, especially if you have
a boss or are part of a committee looking for money, power
and fame (or alternatively money, sex and alcohol).
If you are a programmer or a mathematician, you may have
extracted out the common factor rather easily.

> So everybody is in a hurry, and many of our clients want to do
> things in less time.
> This means they choose speed over depth.
> To me that is an enormous loss.  
> **Peter Block**

When you want to inject a properly customized profile definition
into a highlight group and get back a color-infused highlight
group, you can supply that profile as a parameter to a function
inside the highlight module. In general, you need to allow
passing multiple theme modules — profiles and maps — as parameters.
The approach taken was to compute _require_ paths using _theme_
as a parameter.

Inside the function in the highlight group, you don't get proper code
completion support when the _require_ path is computed as a variable
instead of a simple string literal.
You can have an empty definition (a shared interface) for all aspects
of the program to use and get code completion support everywhere.
It will also be a good thing to have the empty interface so that the
different themes can follow the same standard for interfacing with
the highlight group modules.

This strategy emerged after the initial challenge of having a
colorscheme look and feel the same on _xterm256_ and _truecolor_
was overcome and the next challenge became one of supporting
multiple themes.

> Design is not just what it looks like and feels like.
> Design is how it works.  
> **Steve Jobs**

When we are finally gathering the highlight groups, we simply
swap the empty interface definition with the custom module
in the relevant theme.
This is simply indirection via an interface.
However, it requires the highlight module to include functions
around the previously rather simple table of data.
Now, things are uglier and more complicated than it could be
and we have increased the possibility of hard-to-find bugs due
to missing elements in the custom module definitions in the themes,
especially in a dynamic language such as _lua_.
You would also have to struggle with unnecessary duplication.
However, we have chosen to support multiple themes already.
Elegance will have to compensate for simplicity here to enable
capability.

We seem to be better off without passing any arguments or always
pass just one argument to the function when we request the
color-infused highlight groups and allow each highlight module
to deal with its dependencies internally, leaving dependency
intelligence delegated where it belongs — with the dependent.
The theme name can be this one argument.
The _require_ paths will be interpolated using the theme _name_
to locate specific customs modules.
This allows consistent gathering of highlight groups
when we aggregate elements to load the theme — you define
a _get(theme)_ function inside each highlight module.
Default profiles also need to have the same magic in them.

> An ugly system is one in which there are special interfaces for
> everything you want to do.
> Unix is the opposite. It gives you the building blocks that are
> sufficient for doing everything.
> That's what having a clean design is all about.  
> **Linus Torvalds**

If you don't supply a customization inside the theme, a default
implementation using your standardized (internal abstraction)
color map — placed in the _map_ folder of the theme —
will facilitate the necessary mapping into the highlight groups.
In fact, it is better to allow the default to do the work except
in very special cases.
This turned out to be a blessing that enabled better consistency
and at the same time minimized redundancy and lowered complexity.
It made it easier to move from start to finish in creating
a colorscheme.
This facility emerged after multiple cycles with the custom
profiles and maps had been accomplished.
A reasonably stable mapping abstraction is the stepping stone.

> Always go too far, because that’s where you will find the truth.    
> **Albert Camus**

We are dealing with about a dozen or so theme maps — connecting
the _palette_ to each _profile_.  The semantics in the map
definitions are the anchors of the internal abstraction.
This is a space to apply the wisdom of cohesion and coupling.

The design also uses a heavy dose of the SRP and DRY principles.
It also uses very small functions.
This is going to make _Uncle Bob (Robert C. Martin)_ very happy. ;)

* Single Responsibilty Principle (SRP)
* Don't Repeat Yourself (DRY)

I initially preferred having a separate project for each theme.
Life would have been much simpler albeit less interesting.
But then, I wanted to see how _lua_ allows me to deal with the
problem of generalization in the simplest and most elegant way
possible.  I wanted to discover a decent way of reusing the
highlight definitions.  There was a minor handicap.
The language _lua_ didn't support fixed interfaces
(or _structs_).  This resulted in ghosted variables thus
allowing bugs due to missed data fields.

I started by creating a handful of folders and less than
a dozen files inside each folder.
Let's see where we get!
