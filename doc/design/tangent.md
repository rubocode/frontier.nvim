## A TANGENTIAL PERSPECTIVE ON DESIGN STRATEGY
> JUL 23, 2025

This was separated out from the _strategy_ document to enable
referring to it for a separate yet broader perspective.
Design decisions are hard and you often fall short of expectations
especially the more general your scope becomes.

> The doers are the major thinkers.
> The people that really create the things that change this industry
> are both the thinker and doer in one person.  
> **Steve Jobs**

The _unix_ approach has worked quite well over the long haul
in managing complexity with elegant simplicity.  It avoids
towering monolithic intelligence and prefers the collaboration
of distributed specialized intelligence.
It has a heavy focus on the fundamentals.

### C++

Even _Bjarne Stroustrup_ gave up on writing his monolithic tomes
on _The C++ Programming Language_ after four editions.
His second edition and the Annotated Reference Manual (ARM) were
just the right size in the early nineties.
Then there was the quite excellent _The Design of the C++ Programming
Language_ which was also just the right size.
Standardization invited him to cater to everyone's whims and demands.
C++ became _A Centralized Design by Committee Endeavor_.
They tried to make it do everything under the Sun — which is ultimately
the job of _C_ as the standard high-level machine abstraction — 
and yet have the best performance.
Features from other languages kept knocking at the door with
fresh syntactic sugar.
The language lost both readability and writability.
They lost focus.  It simply got out of hand.

> I’m as proud of many of the things we haven’t done
> as the things we have done.
> Innovation is saying no to a thousand things.  
> **Steve Jobs**

Now it is nigh impossible for one individual to properly
understand the full _C++_ language.  Oh wait, they aren't even
done revising the language.  Instead of the language orchestrating
focused and orthogonal features with localized specialization,
now programmers have to specialize in subsets of the language.
Compatibility with multiple legacy editions (like 2011, 2014,
2017, 2020 and 2023) is now the burden of both the novice and
the seasoned programmer.

> We must free ourselves of the hope that the sea will ever rest.
> We must learn to sail in high winds.  
> **Aristotle Onassis**

_C++_ has acquired a philosophy of continuous self-improvement
over strving to accurately capture the fundamentals.
It has gone the path of _C#_ — a never ending saga.
_Bjarne_ was aided by _Herb Sutter_ of Microsoft lineage.
It is kind of sad.
In contrast, I believe that _C_ is pretty much done and has been
that way for quite a while.

> If you think it's simple, you have misunderstood the problem.  
> **Bjarne Stroustrup**

Perhaps, this is all a result of the fact that — despite
working at _Bell Labs_ — _Bjarne_ used a _Windows_ laptop
as his personal default instead of opting for one that ran
some version of _unix_.  I used to work on the _Windows_
platform with _C++_ and perhaps the primary reason we got paid
was for the ability to navigate the jungle successfully and
deliver simplicity and performance for our users.
After a while, you long for elegance, simplicity and stability,
not speed.

Efficiency and productivity are deep subjects where
a long term perspective is more beneficial than immediate
speed  — we are in a marathon and not a sprint.
Your environment influences you in unimaginable ways!
Did I mention that _Swift_ with features galore was
written in _C++_?
It is a rather strange quandry when extreme programming requires
balance instead of blind adherence to rules.

> Software is not limited by physics, like buildings are.
> It is limited by imagination, by design, by organization.
> In short, it is limited by properties of people, not by properties
> of the world.
> “We have met the enemy, and he is us.”  
> **Ralph Johnson**

### GOLANG

Google began as primarily a _linux/c++_ shop due to the initial
choices of _Larry Page_ and _Sergey Brin_ during the startup stage.
They were suffering the consequences of accidental complexity and
the instability of the C++ standard.
They hired _Ken Thompson_ — the original designer of the _unix_
operating system — to come up with a solution.
The problem space was even more complicated by the more recent
multi-core hardware including GPUs.
But _Ken_ didn't shoot for an even more complex language.
He trodded in the opposite direction.
The result was _golang_, a simpler and more stable language with
an ingrained modular architecture.
_Ken_ was aided by _Rob Pike_ who was also a former _Bell Labs_
colleague.

> If money is your hope for independence, you will never have it.
> The only real security that a man will have in this world is
> a reserve of knowledge, experience, and ability.  
> **Henry Ford**

This is the difference between a nuanced and elegant approach
versus a brute force approach.
If you are in a mighty hurry and have no time to contemplate
the fitting abstractions and their relationships to enable
you to dissect the problem down into focused components,
you end up with a rushed design.
There is always someone rushing you, especially if you have
a boss or are part of a committee looking for money, power
or fame (or alternatively money, sex or alcohol).
If you are a programmer or a mathematician, you may have
extracted out the common factor rather easily.

> So often people are working hard at the wrong thing.
> Working on the right thing is probably more important than
> working hard.  
> **Caterina Fake**

The _golang_ team took quite a while to warm upto adding generics.
It seems like a fundamental necessity after being
exposed to the concept for a few decades.
It didn't have to be nearly as ugly looking and cryptic as it is in _C++_.
But you are at an adavantage in reducing duplication in a significant
aspect of data representation and fundamental reusable algorithm
implementation with sound generics.  People have had experience with
it for quite a while.  They had the option of doing something
more intuitive and insightful earlier in the design of the langauge.

> Research your own experience.  Absorb what is useful, reject
> what is useless and add what is essentially your own.  
> **Bruce Lee**

I had huge reservations about not having a proper _enum_
type in _golang_.  Good semantics reduces complexity in an intuitive
manner resuting in enhanced readability, elegance and expressive power.
It is quite nifty to have a bounded set of error conditions
captured inside some construct similar to an enum.
This approach captures the essential semantics of the problem
at hand and provides conceptual stability.
At the same time, however, one should avoid too many concepts
and distinctions when capturing the fundamentals.

It seems _enums_ are a far superior approach than defining package
scope global variables having names starting with _Err_.
What if you have two separate categories of errors that need definition
inside a single package?
You simply add another shared prefix after _Err_.
It is the package name that scopes the different sets of errors
from all the other errors in the system.
Interesting choice.
Quite acceptable if the packages remain small and focused.

> This reminds me of the time I worked for
> [a Swedish company](https://rubocode.github.io/profile/work/cirrato).
> Their language includes the practice of mushing together abbreviations
> and creating new words.
> A _f\*\*king retard_ was shortened down to _f\*\*ktard_). ;)
>
> I got the first indication of this practice at the very beginning
> but only realized the regularity with which they applied the pattern
> later.
> My name is Ruchira Bomiriya and they had to come up with a _username_
> for me in a situation where I was not physically present to
> ask me for the preferred account name.
> They abbreviated Ruchira into _ru_ and Bomiriya into _bo_ and
> derived the username _rubo_.
> To this day, I use that prefix to derive
> [unique names](https://rubocode.github.io).

It is generally a bad idea to have a strategy of coding by convention
and not provide first class language support for that usage.
People end up creating automation in IDEs or other analytical tools
later trying to police the conventions.  Ruby on Rails is a good
example — I believe there was a _gem_ called
[_RuboCop_](https://rubocop.org).
A rather strange coincidence.

### BACK TO C++

_Bjarne_ and _Herb_ ended up creating
[a separate website](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines)
with specific rules and guidance which signaled the desire of having
tool vendors help with analytical and supervisory solutions.  There is even
[a separate library inside](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#gsl-guidelines-support-library)
that is intended to help enforce these guidelines.
Computing always involves nesting and recursion and someone once
said that _it is turtles all the way down_.
Sometimes, you end up chasing your own tail.

> Trying to define yourself is like trying to bite your own teeth.  
> **Alan Watts**

Interestingly, this invites the _AI_ vendors to take over territory
from the humans. However — currently — AI is merely only learning
from humans in the form of language as opposed to having or registering
actual experience or any inherent cognitive genius augmented by
creativity.

> It takes a wise man to discover a wise man.  
> **Democritus**

This is a far cry from using critical thinking coupled with measured
judgment.  They have chosen to rely on probability and statistics
which fundamentally amounts to herd thinking.
Both humans and machines end up in a daze of incomplete thinking
and simply creating and sustaining unnecessary complexity.
It helps to remember that we are not cattle!

> A good decision is based on knowledge and not numbers.  
> **Plato**

### BACK TO GOLANG

_Golang_ certainly is not quite suited for designing abstractions
to implement object centered application categories such as user
interfaces.  The desire to stick to interface based composition and
duck typing and flat out rejecting inheritance has ruled out
a certain class of practical applications.
Yet, it has achived the self-hosting milestone.

> People think focus means saying yes to the thing you’ve got to focus on.
> It means saying no to the hundred other good ideas that there are.
> You have to pick carefully.  
> **Steve Jobs**

However, it has narrowed its focus and market a self-proclaimed
niche in networking and backend scaling.
Effective light-weight threading via goroutines has become
a simple yet powerful feature for massive scaling.
It helps to keep in mind the number of CPUs running
inside Google's server farm.

> Concentrate all your thoughts upon the work at hand.
> The sun’s rays do not burn until brought to a focus.  
> **Alexander Graham Bell**

Many companies have migrated and more are migrating their
core infrastructure on to a _golang_ foundation.
Perhaps, this is due to the fact that it can be learned
and understood with a very short learning curve and
enables programmers with less experience to produce
more.  Certainly an overall cost advantage that is difficult to
set aside.  But you would end up with a bunch of people of
lesser intellectual depth to live with on a daily basis.
That is a hard choice.

> Whenever you find yourself on the side of the majority,
> it is time to pause and reflect.  
> **Mark Twain**

There is a lot to like, but _golang_ isn't _the ultimate better C_
that we could have expected especially from the _Bell Labs_ elite.
With such heavyweight funding and backing, was a golden
opportunity for a cleaner abstraction than _C_ missed again?

Wouldn't we be better off with _a better C_ that provides
a better alternative to macros and strings and improved compiler
performance via avoidance of reading and parsing the same
translation unit multiple times backed by a macro level
modularization strategy while preserving the simple and
fundamental machine abstraction complemented by safer
alternatives for pointer based indirection?

> Beware of overconcern for money, position or glory.
> Someday you will meet a man who cares for none of these things.
> Then you will know how poor you are.  
> **Rudyard Kipling**

### THE SEARCH CONTINUES

I am taking a patient and careful look at _D_ (for old times sake),
_golang_, _rust_ and _zig_ at the moment.  There is no clear winner.

I was also looking for a decent colorscheme for _neovim_ — the simpler
and daily things of life — and found the renowned ones fell short
of expectations.

In the same vein, when I visit the websites for these languages,
I often get an uneasy feeling when the aesthetic design of the
documentation leaves much to be desired.
I am not expecting rainbows and sunshine, but simplicity, elegance
and evidence of care — evidence that they give a damn.

> Some people like what you do, some people hate what you do,
> but most people simply don’t give a damn.  
> **Charles Bukowski**

Perhaps the team that is developing the language lacks
a well-rounded appreciation for the different aspects of life.
Perhaps they don't appreciate the generality and universality
that they need to enable.
I wonder whether the language developed by people with less of
an appreciation for quality in their work will endure.
Perhaps their priorities are not balanced.
They may be sprinting instead of laying the foundation for a marathon.

I fully appreciate that putting lipstick on a pig leads to misconceptions,
detours, diversions and bad decisions.
But elegance always creeps out and grabs you.
In real life, you can often recognize a _m\*ron_ from a mile away.
When you do, the best thing is to avoid that fellow.

> If an opinion contrary to your own makes you angry,
> that is a sign that you are subconsciously aware of
> having no good reason for thinking as you do.  
> **Bertrand Russell**

### THE MORAL OF THE STORY

Design is a hard and complex activity which requires a heavy dose
of critical thinking, judgment and taste.
If you're in a hurry for one reason or the other or narrow in vision,
you're likely going to impose constraints that help you focus and
make the task manageable.
This is a very healthy, useful and effective strategy.
However, in the process it is quite possible to exclude some essentially
fundamental aspect of the problem space and eventually hit a wall
that is hard to leap over.
This discipline requires depth and study.

> So everybody is in a hurry, and many of our clients want to do
> things in less time.
> This means they choose speed over depth.
> To me that is an enormous loss.  
> **Peter Block**

This was a nostalgic tangent and almost a rant.  But hey! ;)
The day one of the _AI_ incarnations fully understands this page
and can demonstrate that understanding in real-life practical
use, I will be officially out of a job!
