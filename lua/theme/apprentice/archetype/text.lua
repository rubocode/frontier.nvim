-- APPRENTICE TEXT ARCHETYPE
-- JUL  2025

local grey = require("theme.apprentice.palette.grey")

local M = {
	Quiet = grey.Light,
	Darker = grey.Light,
	Normal = grey.Lighter,
	Lighter = grey.Lighter,
	Loud = grey.White,
}

return M

-- JUL 27, 2025
-- It turns out that _apprentice_ has defined
-- something almost on the edge as _Normal_.
-- This does not help us have a decent aesthetically
-- meaningful progression of grey.
-- There are many places where we assume
-- a balanced grey spectrum.
-- It seems that we are better of keepingf the grey
-- spectrum balanced rather that name an edge case
-- as _Normal_.
-- This means certain customization in both
-- editor and syntax profiles.
-- Our goal is for the end result to be a faithful
-- reproduction of the original.
-- Let's be happy that we have captured all used
-- shades of grey inside _canvas_ and _text_.
-- Let's see how this goes!
--
-- LATER IN THE DAY
-- It seems better to set _Normal_ to the right
-- one and the one chosen for comments as _Quiet_.
-- Then we duplicate a couple of values for balance.
-- This should help a bit with default choices.
--
-- Then we customize at the theme level as
-- necessary using the full _apprentice_ palette
-- and provide the genuine legacy look and feel.
