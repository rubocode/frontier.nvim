## DESIGN STRATEGY
> JUL 10, 2025

My initial intention was to create a reasonable stable abstraction of mapping
colors into the highlight groups.  This would allow me to make changes and evolve
rapidly.

However, supporting more than one theme reequired dynamic binding of some sort
and one of the methods seemed to be to call a function with the theme as a
parameter and get back color-infused highlight group definitions.

The trouble was that I inherently hated placing all parts of my abstraction
in one file.  I wanted to deal with the problem in a more intuitive modular
style.  I ended up creating a handful of folders and less than a dozen files
inside each folder.

When you want to supply the definition of a module in the theme into a highlight
group and get back a color-infused highlight group, you can supply that module
as a parameter to a function inside the highlight module.  In general, you
need to allow passing multiple theme modules as parameters.

Inside the function in the highlight group, you don't get proper code completion
support.  You can have an empty definition (a shared interface) for all themes
to use and get code completion support.  It will also be a good thing to have
the empty interface so that the different themes can follow the same standard
for interfacing with the highlight group modules.

When we are finally gathering the highlight groups, we simply swap the
empty interface definition with the concrete module in the relevant theme.
This is simply indirection via an interface.  However, it isn't prettier
than not having any functions or theme swapping as these introduce sheer
ugliness and even hard-to-find bugs due to missing elements in the concrete
theme module definitions.

However, since we are dealing with a case with about a dozen or so theme
modules, this might be tolerable given that you can isolate the highlight
definitions and reuse them - (SRP and DRY principles apply).

* Single Responsibilty Principle (SRP)
* Don't Repeat Yourself (DRY)

I initially preferred having a separate project for each theme.  But then,
I wanted to see how _lua_ allows me to deal with the problem of generalization
in the simplest and most elegant way possible in light of not being able
to define fixed interface definitions checked statically.

Let's see where we get!
