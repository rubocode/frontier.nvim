## THE DIAGNOSTICS ARCHETYPE
> JUL 26, 2025

This again is a very essential and standard element in managing
the programmer experience.  There are two aspects to it.

The first aspect is when you want to inform the programmer using
pure text messages.  You go with the default background and just
decide on the color of the text only.

The second situation is where you might need the combination of
foreground and background colors.  A good example is when you
need to show diagnostics for _LSP_.  If you have a very dark
background, the diagnostics messages sometimes get buried in
the multi-colored programming text and are not that noticable.
So you use a suitable background color and use light or dark
foreground that matches.

These two colors are not derived naturally from the text
version.  They are separate.  The best strategy to keep
things simple, local and concise was to have a _Line_
version in addition to the _Text_ version for diagnostics
color assignment.  The text version — intentionally — avoids
defining a background color.

The _Line_ colors also have the exact same elements:
_Error_, _Hint_, _Info_, _Ok_ and _Warn_.

When defining the color profile for diagnostics in
a given theme, you can pick and choose from the _Text_
and _Line_ versions.  These definitons stay stable.
Yet, you have flexibility and customizability depending
on your particular color palette.
