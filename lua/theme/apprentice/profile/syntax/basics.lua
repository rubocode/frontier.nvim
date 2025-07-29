-- APPRENTICE SYNTAX BASICS PROFILE
-- JUL 27, 2025

local uniq = require("theme.apprentice.archetype.unique")
local text = require("theme.apprentice.archetype.text")

local grey = require("theme.apprentice.palette.grey")
local light = require("theme.apprentice.palette.light")
local std = require("theme.apprentice.palette.std")

local style = require("highlights.style")

local M = {
	Comment = { fg = grey.Light },
	Conceal = { fg = text.Normal },
	Constant = { fg = uniq.Fixed },
	Debug = { fg = uniq.Special },
	Delimiter = { fg = uniq.Special },
	Error = { fg = std.Red, style = style.Reverse },
	Function = { fg = uniq.Dynamic },
	Identifier = { fg = std.Blue },
	Ignore = {},
	Keyword = { fg = light.Blue },
	Label = { fg = light.Blue },
	Operator = { fg = light.Blue },
	PreProc = { fg = std.Aqua },
	Special = { fg = uniq.Special },
	SpecialKey = { fg = grey.Medium },
	Statement = { fg = light.Blue },
	StorageClass = { fg = uniq.Striking },
	String = { fg = uniq.Prominent },
	Tag = { fg = uniq.Special },
	Title = { fg = uniq.Dynamic },
	Todo = { style = style.Reverse },
	Type = { fg = uniq.Striking },
	Underlined = { fg = uniq.Prominent, style = style.Underline },
}

return M
