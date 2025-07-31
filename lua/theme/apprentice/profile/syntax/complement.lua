-- APPRENTICE SYNTAX COMPLEMENT PROFILE
-- JUL 29, 2025

local canvas = require("theme.apprentice.archetype.canvas")
local text = require("theme.apprentice.archetype.text")
local uniq = require("theme.apprentice.archetype.unique")

local grey = require("theme.apprentice.palette.grey")
local light = require("theme.apprentice.palette.light")
local std = require("theme.apprentice.palette.std")

local style = require("highlights.style")

local M = {
	Conceal = { fg = text.Normal },
	Debug = { fg = uniq.Special },
	Error = { fg = std.Red, style = style.Reverse },
	Ignore = {},
	MatchParen = { fg = light.Yellow, bg = canvas.Normal },
	SpecialKey = { fg = grey.Medium },
	Title = { fg = uniq.Dynamic },
	Todo = { style = style.Reverse },
	Underlined = { fg = uniq.Prominent, style = style.Underline },
}

return M
