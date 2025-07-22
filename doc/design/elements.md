## DESIGN ELEMENTS
> JUL 19, 2025

* Highlights
* Profiles
* Palettes
* Maps
* Defaults

The technical essence of the problem is quite straight-forward.
There are things called highlight groups which are tied to specific
syntactic and semantic elements of the display in the editor and
you have to set the foreground color, background color and the style
(bold, italic, underscore etc.).

We call one of these elements a highlight.
Now, things are not too simple and that turns out to be a good thing.
We can link one highlight group to another one so that the second one
can automatically switch along with the first.
In this case, you need only supply and modify the first and simply
keep the link stable.
So, in a particular colorscheme, you supply some color definitions
and often some links.

The color definitions you supply, I have decided to call profiles.
So, highlights correspond to a PROFILE (one or more highlight groups)
and a set of LINKS (you can see these semantics captured directly
in the code).  You supply the profile (a partical specification for
an aspect in the theme that you are working on) and the links do some
legwork for you.  You just have to set things up right once.

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

When you are in the process of creating multiple customizations,
it is helpful to generalize the abstractions to support the color
combinations.  The ultimate abstraction will do the whole thing
with just a definition of the palette.
The creative aspect involves specifying the mapping between
the chosen custom color palette and the editor color abstraction
that needs to be translated into the flat list of properties that
are the highlights.

So, what you really need to do is to map the palette to
an intermediate abstraction that has achived an elegant one-to-one
relationship with the flat list of properties (highlights).
Now you pick a palette and map it to the internal abstraction
and voila, you have a working colorscheme.

It would be a shame if you had to map the palette into each highlight.
That is just a tedious job.  We have now expressed the display
properties in semantic terms.  So if your background color is some color,
you can just pick that up and use it in your menus.  We now have the
capabilty for default links inside the abstraction.  You only need to
provide a customization when the default is not acceptable or not
pleasing enough for your sophisticated intuition.

Ultimately, it would be a waste of your life to spend it attempting
to design elegant aesthetics for the multitude.
Tastes vary and you can't make everyone happy.
So, you pick the simpler and the more pragmatic approach.
You try to do something that delights you, all the way
under carefully chosen design constraints.
Anyone who likes it can enjoy it for free, thanks to open source.
If no one else does, you still made one that you would gladly use!

> When you’re a carpenter making a beautiful chest of drawers,
> you’re not going to use a piece of plywood on the back,
> even though it faces the wall and nobody will ever see it.
> You’ll know it’s there, so you’re going to use a beautiful
> piece of wood on the back.
> For you to sleep well at night, the aesthetic, the quality,
> has to be carried all the way through."  
> **Steve Jobs**

The design challenge now becomes one of creating an accurate internal
asbtraction that is congruent with the problem at hand to eliminate
impedance mismatches.  The better you understand the neovim property
design and classification, the better you can factor the internal
abstraction.  The better your internal abstraction, the better your
representation of aesthetics in the problem domain.

The better the defaults, the less you need to customize.
The less you need to customize, the better your infrastructure for
aesthetic expression and creative color choices.
All of a sudden, you can quickly experiment with colors and have that
instantly show you how the the technicalities are impacted.

> Ultimately, it comes down to taste.
> It comes down to trying to expose yourself to the best things
> that humans have done and then trying to bring those things
> into what you’re doing.  
> **Steve Jobs**

You have just increased your productivity via intelligent automation.
Now, your tastes may differ.  You might prefer to ask **ChatGPT** to
do this for you.  Then again, you just might enjoy creating a design
that pleases you.  That gives you a better feeling than the one you
get by becoming a _prompt engineer_.
