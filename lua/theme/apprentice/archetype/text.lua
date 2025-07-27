-- APPRENTICE TEXT ARCHETYPE
-- JUL  2025

local grey = require("theme.apprentice.palette.grey")

local M = {
	Quiet = grey.Grey,
	Darker = grey.Medium,
	Normal = grey.Light,
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
