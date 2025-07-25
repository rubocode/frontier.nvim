## DESIGN ELEMENTS
> JUL 19, 2025

Here, we identify the chosen elements of the design.
These are macro level constructs that help us think
about the design at a higher level.
These help us decide where a certain piece of data or
logic would fit in the overall design during implementation
and later in grasping what's going on.

### HIGHLIGHT

The technical essence of the problem is quite straight-forward.
There are things called highlight groups which are tied to specific
syntactic and semantic elements of the display in the editor and
you have to set the foreground color, background color and the style
(bold, italic, underscore etc.).

We call one of these elements a highlight group.
Now, things are not too simple and that turns out to be a good thing.
We can link one highlight group to another one so that the second one
can automatically switch along with the first (this is analogous
to soft links in unix file systems).
In this case, you need only supply and modify the first and simply
keep the link alive.
So, in a particular colorscheme, you supply some color definitions
and often some links.

### PROFILE

The color definitions you supply, I have decided to call profiles.
A given set of highlights correspond to a PROFILE (one or more highlight
groups) and a set of LINKS (you can see these semantics captured directly
in the code).  You supply the profile (a partial specification for
an aspect in the theme that you are working on) and the links do the
remaining legwork for you.  You just have to set things up right once.
We use a stable catalog of profiles organized primarily to isolate
and support coherent groups of highlights on a one-to-one basis.

When you want to support multiple themes, you need to be able
to supply different colors and styling for each specific custom theme.
You simply supply the same profile with different color and style
definitions.  Now you can support multiple customizations for
a particular aspect of the editor's display (it could be the smaller
menus or the statusline).  You can also provide a default arrangement
that is in harmony with the overall look and feel.

> All problems in computer science can be solved by another
> level of indirection.  
> **David Wheeler**

Profiles feeding the highlights in one-to-one fashion provide us
the bottom infrastructure layer of stability in the design.

### PALETTE

When you are in the process of creating multiple customizations,
it is helpful to generalize the abstractions to support the color
combinations.  Once the color palette is chosen, you need to map
that into the highlights.

The creative aspect involves specifying the mapping between
the chosen custom color palette and the editor color abstraction
that needs to be translated into the flat list of properties that
are the highlights.

### ARCHETYPE 

So, what you really need to do is to map the palette to
an intermediate abstraction that has achived an elegant
one-to-one relationship with the flat list of properties (highlights).
Once you pick a palette and map it to the internal abstraction,
voila!, you have a working colorscheme.

Let's call this internal abstraction _the archetype_ —
to be specific and concise in communicating this design
choice.

### DEFAULT

Since we are aiming to create a general internal abstraction
(_the archetype_), it can be expected to become rather stable
at some point. This should mean that the semantics have been
captured successfully and the relationships between color
aesthetics and technical elements demonstrate high fidelity.

That would allow us to use the _archetype_ elements to expand into
_profile_ elements reliably and consistently across the themes.
This allows us to express the uniqueness of the theme to be
achieved through a combination of intelligent aesthetically
harmonious defaults and accommodate full granular customization
of profiles in exceptional cases.
