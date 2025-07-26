## THE TEXT ARCHETYPE
> JUL 26, 2025

The colors in the editor are intended to let us distinguish
syntactic elements ina useful and intuitive way.
The type system, data and function varieties in a
programming language have intrinsic meaning to its
programmers.  We need to synchronize the syntax coloring
with the internal conceptual model in the mind of the
programmer.

There are many ways of doing this.  The _firewatch_ colorscheme
that I started with used a _duotone_ approach for contrast.
They had the _uno_ palette which for the most part provided
a grey scale.  The complementary _duo_ palette contained
_normal_, _darker_ and _lighter_versions of _red_ from
a high level.  Then they had a limited _syntax_ pallette.
This turned out to be a good way of keeping things simple
and elegant.  However, they didn't bother with _gitsigns_,
_diagnostics_ or _lsp_.

In our abstraction the archetype is a bit more sophisticated
and the nuances and distinctions are different.  But the
philosophy remains in line with _firewatch_.
We do a little bit better.
We intentionally keep things simple and elegant.
Where _firewatch_ used numbering to position the individual
colors in _uno_ and _duo_, we always use _words_ which capture
our usage better — resulting in cleaner semantics, more
readable code and better conceptual leverage.

The _text_ archetype allows the definition of five levels of
character coloring primarily intended ro be based on contrast
level.  In our perspective, this is our _grey_ scale.
The extemely dark values are define in the _canvas_ archetype.
The _text_ archetype defines two closer and distinct levels
of grey to the _Normal_ one which is to be used as the standard
_Normal_ text color associated with the _Normal_ highlight group.
There are two lighter versions called _Lighter_ and _Loud_
together with two darker versions called _Darker_ and _Quiet_.

It helps you to remember that _text.Quiet_ is used for 
_comments_.  In our design — from the inception — we prefer
rather quiet comments.  We integrate that design decision
into the semantics of color definition helping us keeping
things simple and concise.  We have translated our knowledge
of the problem space and design decisions and built it
into the _lingua franca (DSL)_ in implementing the solution.
