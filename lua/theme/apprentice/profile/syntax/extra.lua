-- APPRENTICE SYNTAX EXTRA PROFILE
-- JUL 29, 2025

local uniq = require("theme.apprentice.archetype.unique")
local text = require("theme.apprentice.archetype.text")

local grey = require("theme.apprentice.palette.grey")
local std = require("theme.apprentice.palette.std")

local style = require("highlights.style")

local M = {
	Conceal = { fg = text.Normal },
	Debug = { fg = uniq.Special },
	Error = { fg = std.Red, style = style.Reverse },
	Ignore = {},
	SpecialKey = { fg = grey.Medium },
	Title = { fg = uniq.Dynamic },
	Todo = { style = style.Reverse },
	Underlined = { fg = uniq.Prominent, style = style.Underline },
}

return M
