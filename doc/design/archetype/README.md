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

There are two larger categories of coloring we need to support
— _editor_ elements and _syntax_ elements.
Editor elements consist of background colors, diagnostics colors, menus,
status indicators and the like.
Syntax elements are used in providing useful distinctions we need to
demarcate in syntax elements such as constants, variables, operators,
functions, parameters and types.

It was decided to breakdown these elements in an arrangement that
made more sense from an aesthetic angle than a technical angle.
Then we map the aesthetics into the technical mapping defined
by the highlight groups.  The highlight groups themselves
are organized in a modular component fashion.
