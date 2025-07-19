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

We call one of these elements a highlight.  Now things are not too simple.
We can link one highlight group to another one so that the second one
can automatically switch along with the first.  In this case, you need
only supply and modify the first and simple keep the link stable.
So, in a particular colorscheme, you supply some color definition and
often some links.

The color definitions you supply, I have decided to call profiles.
So, highlights correspond to a PROFILE and and set of LINKS.
(you can see these semantics captured directly in the code).
You supply the profile (a partical specification for an aspect
in the theme that you are working on) and the links do some
legwork for you.  You just have to set things up right once.

When you want to support multiple themes, you need to be able
to supply different colors and styling for each specific custom theme.
You simply supply the same profile with different color and style
definitions.  Now you can support multiple customizations for
a particular aspect of the editor's display (it could be the little
menus or the statusline).

> All problems in computer science can be solved by another level of indirection.  
> **David Wheeler**

When you are in the process of creating multiple customizations,
it is helpful to generalize the abstractions to support the color
combinations.  The ultimate abstraction will do the whole thing
with just a definition of the palette.
The creative aspect involves specifying the mapping between
the chosen custom color palette and the editor color abstraction
in the editor given by a flat list of properties named highlights.

So, what you really need to do is to map the palette to
an intermediate abstraction that has achived an elegant one-to-one
relationship with the flat list of properties.  Now you pick a palette
and map it to the internal abstraction and voila, you have a working
colorscheme.

Now, it would be a shame if you had to map the palette into each highlight.
That is just a tedious job.  We have now expressed the editor display
properties in semantic terms.  So if your background color is some colors,
you can just pick that up and use it in your menus.  We now have the
capabilty for default links inside the abstraction.  You only need to
provide a customization when the default is not acceptable.

The design challenge now becomes one of creating an accurate internal
asbtraction that is congruent with the problem at hand to eliminate
impedance mismatches.  The better you understand the neovim property
design and classification, the better you can factor the internal
abstraction.  The better your internal abstraction, the better your
representation of aesthetics in the problem domain.

The better the defaults, the less you need to customize.  The less you
need to customize, the better you infrastructure for aesthetic
expression and creative color choices.  All of a sudden, you can quickly
experiment with colors and have that instantly show you how the the
technicalities are impacted.

> Ultimately, it comes down to taste.
> It comes down to trying to expose yourself to the best things
> that humans have done and then trying to bring those things
> into what you’re doing.  
> **Steve Jobs**

You have just increased your productivity via intelligent automation.
Now, your tastes may differ.  You might prefer to ask **ChatGPT** to
do this for you.  But I didn't go to school for 13 years, university
for 4 years and spent a bunch of years coding just so that the people
who created ChatGPT can each all the Nova Lox Bagels they want with
Philadelphia Cream Cheese and make TOMAHAWK missiles, while I become
a starving **prompt engineer**.

Apparently, they are making the world a better place through
technological innovation.
Build Gates: oops, did I spell that wrong?

> If they don't have bread, let them eat cake.  
> **Marie Antoinette**

What would you rather eat? bagels, bread or cake?
Is that the right question to ask?
More importantly: are you getting laid or are you getting screwed?
