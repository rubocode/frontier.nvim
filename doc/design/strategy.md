## DESIGN STRATEGY
> JUL 10, 2025

My initial intention was to create a reasonable stable abstraction of mapping
colors into the highlight groups.  This would allow me to make changes and evolve
rapidly.

However, supporting more than one theme required dynamic binding of some sort
and one of the methods seemed to be to call a function with the theme as a
parameter and get back color-infused highlight group definitions.

The trouble was that I inherently hated placing all parts of my abstraction
in one file.  I wanted to deal with the problem in a more intuitive modular
style.  I ended up creating a handful of folders and less than a dozen files
inside each folder.

> Design is not just what it looks like and feels like.  
> Design is how it works.  
> **Steve Jobs**

When you want to apply the theme definition of a module in the theme into
a highlight group and get back a color-infused highlight group, you can supply
that module as a parameter to a function inside the highlight module.
In general, you need to allow passing multiple theme modules as parameters.

Inside the function in the highlight group, you don't get proper code completion
support because the require path is computed as a variable instead of using
a simple string literal.
You can have an empty definition (a shared interface) for all aspects of
the program to use and get code completion support everywhere.
It will also be a good thing to have the empty interface so that the
different themes can follow the same standard for interfacing with
the highlight group modules.

When we are finally gathering the highlight groups, we simply swap the
empty interface definition with the concrete module in the relevant theme.
This is simply indirection via an interface.  However, it isn't prettier
than not having any functions or theme swapping as these introduce sheer
ugliness and even hard-to-find bugs due to missing elements in the concrete
theme module definitions, especially in dynamic language such as _Lua_.

We seem to be better off without passing any arguments or always pass
just one argument to the function when we request the color-infused highlight
groups and allow each highlight module to deal with its dependencies internally
leaving dependency intelligence delegated where it belongs.
The theme name can be this one argument.  This allows consistent gathering
of highlight groups when we aggregate elements to load the theme.

> Always go too far, because that’s where you will find the truth.    
> **Albert Camus**

However, since we are dealing with a case with about a dozen or so theme
modules, this might be tolerable given that you can isolate the highlight
definitions and reuse them - (SRP and DRY principles apply).  Ultimately,
it is a design trade-off that balances flexibility, durability and
adaptability.

* Single Responsibilty Principle (SRP)
* Don't Repeat Yourself (DRY)

I initially preferred having a separate project for each theme.  But then,
I wanted to see how _Lua_ allows me to deal with the problem of generalization
in the simplest and most elegant way possible in light of not being able
to define fixed interface definitions that are checked by the language
itself statically.

Let's see where we get!
