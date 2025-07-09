## CONCLUSION
> JUL 09, 2025

Creating this colorscheme was an interesting journey.
I have now created on that I like and have managed to understand the semantics
and the abstractions necessary to generalize the problem of creating a
brand new colorscheme.

However, defining multiple color schemes inside one project seems to be a bad idea,
especially if the different schemes don't share the same theme.

It turned out that keeping things simple and defining just one colorscheme
inside one repository is a good idea. Capturing essential semantics and abstraction
in the most straight-forward way provides for best flexibility and experimentation.
In the long haul each colorscheme will have a life of its own.

It might seem a good idea to cling on to the highlight group definitions as they
are the ones that change the most.  Coupling them to a single theme abstraction
might seem like a good idea.

But that requires more dynamic binding between highlight groups and the theme
abstractions.  In the long run, even having light and dark themes in the same color
schemes seem to be a bad idea.  Color coordination is simply harder.

So, I have decided to keep things simple.  I will create two separate projects
for **frontier** and **firewatch256**.  I will bring frontier into a reasonably
stable state and then copy it over into firewatch256 and adapt.
