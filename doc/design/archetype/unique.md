## THE UNIQUE ARCHETYPE
> JUL 26, 2025

These colors help us to create contrast against the
regular text colors.  They are meant to make some part
of the display or text stand out for you.
The syntactic coloring of _strings_, _booleans_ and
_numbers_ come to mind.  These are the building blocks
of the most fundamental computing abstraction.
It helps the programmer if these elements appear
recognizably different from the rest and at the same
time be different from each other.

This is where the _unique_ palette comes in handy.
This has eight options and are the highest levels
of abstraction for better application in creating
harmony in the design space.

### ACCENT

The is a general term meaning a _distinct emphasis_.
This name is used in _firewatch_ and it was decided
to keep the same name.  Since, I always wanted to
implement _firewatch_, it would help me in mapping
the color almost directly.  It also provided
good semantic sense.  An example of the use of
_Accent_ is found in making the _operators_
(=, +, - etc.) jut out a bit more to emphasise
the relationship between operands at a higher level.
Of course, you can use it in other situations.
But the original use case helps understand
the intended differentiation.

### DISTINCT

The primary usage of this has been to define
_Title_.  A title must be distinct from the others
in the senatic sense.  Of course you can use some
arbitrary color choice for _Distinct_ and some
other element even inside the _unique_ archetype.
The _frontier_ primary theme uses _red.Normal_
for both _Fixed_ and _Special_ elements.
But these are separately used in the highlight
definitions.  You can change your mind of _Fixed_
or _Special_ at any point with changing the color
at just this one place in the project and receive
the desired outcome.  We have the carefully chosen
distinctions spelled out in the semantics of the
solution and you can experiment with colors
combinations in such a simple an straight-forward
manner.  How cool is that!

### DYNAMIC

Life is nouns and verbs.  Computing is data and
functions.  From a higher perspective these
are things and actions.  Things represent states
of being and action is about creating movement
in time.  They are stable versus volatile —
_static_ versus _dynamic_.  Since _static_ is
computing slang and often a keyword, I didn't
use it here.  Instead, I went with _Fixed_ and
_Dynamic_.  You've got to be very careful during
semantic abstraction.  The primary used of 
_Dynamic_ is for _functions_ which specify
activity.

### FIXED

These represent _fixed_, _constant_ or _stable_
elements.  Thus it is used  _Constant_, _Boolean_,
_Number_, and _Float_ among other things.

In the _frontier_ primary theme — at this point
in time — I have used the same color for
_Special_ in addition to the above.
In our case, we have linked to _Special_ to
associate _buitin_ functions for example.
We are reflecting the fact that the builtin
functions represent stability.
I can always change my mind and have the _builtin_
functions display different from _constants_ via
just a single color assignment with no duplication
anywhere else.
A direct result of taking advantage of the
Single Responsibility Principle (SRP) in the
implementation.

Of course, one theme can have them the same and
another one can have them different.
But you don't touch the highlight group definitions
You have the profile definitions in the middle
and they inform the highlights.
Stability, accuracy, completeness and flexibility
all in one integrated modular design.
How cool is that!

### PECULIAR

The origin of this term is when I wanted to have a
separate color for parameters passed to a function.
They needed to be different from everything else
inside a function — rather peculiar.

### PROMINENT

This one primarily exists to define the color for
_strings_.  The same can be used elsewhere.
In all colorscheme I have experienced, strings have
a privileged and staring at your face nature.
I have term this as _Prominent_.  You can use it
elsewhere too without coupling to much into a name
such as _type.String_.  That would be too tight
a coupling.

### SPECIAL

This is one is simply tied to the _Special_ highlight
group.  It is used in many contexts by _neovim_ that
are too neumerous to mention.  One of them usually
is for _builtin_ functions.

### STRIKING

I wanted to have a separate element to assign the
color for types.
I am a former _c/c++_ programmer (right at home
dealing with abstract data types representing the
classification of nouns in the system - the types
of objects).

> Data dominates. If you’ve chosen the right data structures and organized
> things well, the algorithms will almost always be self-evident.
> Data structures, not algorithms, are central to programming.  
> **Rob Pike**

I am exploring _golang_ — another statically typed
language which uses _structs_ to define the nouns in the system.
I wanted types to have a rather striking outlook.
And here you are!
