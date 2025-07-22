## DESIGN STRATEGY
> JUL 10, 2025

My initial intention was to create a reasonable stable abstraction for mapping
colors into the highlight groups.  This would allow me to make changes and evolve
rapidly.
However, supporting more than one theme required dynamic binding of some sort
and one of the methods seemed to be to call a function with the theme as a
parameter and get back color-infused highlight group definitions.

The trouble was that I inherently hated placing all parts of
my abstraction in one file.
I wanted to deal with the problem in a more intuitive modular style.
We are _unix_ programmers after all.
We prefer specialized distributed intelligence over complex and unwieldy
centralized intelligence.
We use focused tools and piping (in essence, specialized small
functions and interfaces) instead of bloated monoliths
(huge long functions dealing with too many shared variables
inside one scope).

Even _Bjarne Stroustrup_ gave up on writing his monolithic tomes on
_The C++ Programming Language_ after four editions.
His second edition and the Annotated Reference Manual (ARM) were just
the right size in the early nineties.
Then there was the quite excellent _The Design of the C++ Programming
Language_ which was also just the right size.
Standardization invited him to cater to everyone's whims and demands.
C++ became a _Design by Committee_ project and lost focus.
It simply got out of hand.  Bjarne was aided by _Herb Sutter_
of Microsoft lineage.

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

This is the difference between a nuanced and elegant approach versus
a brute force approach.
You are in such a hurry and have no time to contemplate the fitting
abstractions and their relationships to enable you to dissect
the problem down into focused components.

> So everybody is in a hurry, and many of our clients want to do
> things in less time.
> This means they choose speed over depth.
> To me that is an enormous loss.  
> **Peter Block**

When you want to apply the theme definition of a module in the theme into
a highlight group and get back a color-infused highlight group, you can supply
that module as a parameter to a function inside the highlight module.
In general, you need to allow passing multiple theme modules as parameters.

> Design is not just what it looks like and feels like.
> Design is how it works.  
> **Steve Jobs**

Inside the function in the highlight group, you don't get proper code completion
support because the require path is computed as a variable instead of using
a simple string literal.
You can have an empty definition (a shared interface) for all aspects of
the program to use and get code completion support everywhere.
It will also be a good thing to have the empty interface so that the
different themes can follow the same standard for interfacing with
the highlight group modules.

When we are finally gathering the highlight groups, we simply swap the
empty interface definition with the custom module in the relevant theme.
This is simply indirection via an interface.  However, it isn't prettier
than not having any functions or theme swapping as these introduce sheer
ugliness and even hard-to-find bugs due to missing elements in the custom
module definitions in the themes, especially in a dynamic language such
as _Lua_.  You will also have to struggle with unnecessary duplication.

We seem to be better off without passing any arguments or always pass
just one argument to the function when we request the color-infused highlight
groups and allow each highlight module to deal with its dependencies internally,
leaving dependency intelligence delegated where it belongs.
The theme name can be this one argument.  This allows consistent gathering
of highlight groups when we aggregate elements to load the theme.

> An ugly system is one in which there are special interfaces for
> everything you want to do.
> Unix is the opposite. It gives you the building blocks that are
> suﬃcient for doing everything.
> That's what having a clean design is all about.  
> **Linus Torvalds**

A practical way to supply default mappings emerged as the
design and the implementation evolved and tackled redundancy and
duplication elegantly.  It lifted up the semantic relationships
into harmonious and consistent color mactching choices resulting
in further simplification.

If you don't supply a customization inside the theme, a default
implementation using your standardized (internal abstraction) color map
— placed in the _map_ folder of the theme — will do the necessary mapping
into the highlight groups.
In fact, it is better to allow the default to do the work except
in very special cases.
This turned out to be a blessing that enabled better consistency
and at the same time minimized redundancy and lowered complexity.
It made it easier to move from start to finish in creating
a colorscheme.

> Always go too far, because that’s where you will find the truth.    
> **Albert Camus**

Since we are dealing with a case with about a dozen or so theme
modules, breaking up the highlight groups and reusing them
will be justified by the coherence of the elements inside each
component (SRP and DRY principles also apply).
Ultimately, it is a design trade-off that balances flexibility,
durability and adaptability.

* Single Responsibilty Principle (SRP)
* Don't Repeat Yourself (DRY)

I initially preferred having a separate project for each theme.
But then, I wanted to see how _Lua_ allows me to deal with the problem
of generalization in the simplest and most elegant way possible in light
of not being able to define fixed interface definitions that are checked
by the language itself statically.

I started by creating a handful of folders and less than a dozen files
inside each folder.  Let's see where we get!
