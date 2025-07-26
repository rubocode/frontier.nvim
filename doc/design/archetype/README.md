## THE ARCHETYPE
> JUL 26, 2025

We have named our internal color mapping abstraction the _archetype_.
This consists of the combination of a less than a dozen components.

### DIRECT COLOR SELECTIONS 

These are selections from a color palette.  You use them as color
values and assign them to _foreground_ and _background_ in defining
highlight groups.  The

* [Canvas](canvas.md)
* [Diff](diff.md)
* [Text](text.md)
* [Unique](unique.md)

### BASIC HIGHLIGHT DEFINITIONS 

These are fully specified highlight groups with _foreground_,
_background_ and _styles_ assigned optionally and conceived
as an array of options.

* [Diagnostics](diagnostics.md)
* [Mode](mode.md)
* [Status](status.md)

There are two larger categories of coloring we need to
support — _editor_ elements and _syntax_ elements.
Editor elements consist of _background_ colors, _diagnostics_
colors, _menus_, _status_ indicators and the like.
Syntax elements are used in providing useful distinctions we
need to demarcate in syntax elements such as _constants_,
_variables_, _operators_, _functions_, _parameters_ and _types_.

It was decided to breakdown these elements in an arrangement
that made more sense from an aesthetic angle than a technical
angle.
We map the aesthetics into the technical parameters defined
by the highlight groups.  In this design, the highlight
groups themselves are organized as modular components.
