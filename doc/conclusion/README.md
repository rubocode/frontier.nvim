## CONCLUSION
> JUL 09, 2025

Creating this colorscheme was an interesting journey.
I have now created one that I like and have managed to understand the semantics
and the abstractions necessary to generalize the problem of creating a
brand new colorscheme.

However, defining multiple color schemes inside one project seems to be a bad idea,
especially if the different schemes don't share the same abstractions.

It turned out that keeping things simple and defining just one colorscheme
inside one repository is a good idea. Capturing essential semantics and abstraction
in the most straight-forward way provides for best flexibility and experimentation.
In the long haul each colorscheme will have a life of its own.

It might seem a good idea to cling on to the highlight group definitions as they
are the ones that change the most.  Coupling them to a single theme abstraction
with different color palettes might seem like a good idea.

But that requires more dynamic binding between highlight groups and the theme
abstractions.  In the long run, even having light and dark themes in the same color
scheme seems to be a bad idea.  Color coordination is simply harder.
You are trying to cater to two different audiences.
It is like having two wives, one for the day and one for the night.
Bad idea!

When you want to change just one thing, you have to worry about how the multiple
themes are affected.  Dynamic indirection - calling functions to blend the
highlights and the themes instead of straight coupling between them - is going
to require additional testing to make sure everything still works right as _Lua_
does not support static structures and type checking.  Instead, I have linked the
color selection with the highlight groups via an intermediate theme abstraction.

Then I rely on straight coupling of the highlight groups with the set of theme
abstractions and make use of intellisense to reduce the introduction of errors.
This allows me to evolve the colorscheme at a much rapid pace.  It is also easier
to adapt, modify and tune it.

So, I have decided to keep things simple.  I will create two separate projects
for **frontier** and **firewatch256**.  I will bring frontier into a reasonably
stable state and then copy it over into firewatch256 and adapt.
