-- FIREWATCH SYNTAX BASICS PROFILE
-- JUL 15, 2025

local text = require("theme.firewatch.archetype.text")
local uniq = require("theme.firewatch.archetype.unique")
local style = require("highlights.style")

local duo = require("theme.firewatch.palette.duo")

local M = {
	Comment = { fg = text.Quiet },
	Constant = { fg = uniq.Fixed },
	Debug = {},
	Delimiter = { fg = text.Quiet },
	Function = { fg = uniq.Dynamic },
	Identifier = { fg = uniq.Special },
	Keyword = { fg = text.Loud },
	Label = {},
	Operator = { fg = uniq.Accent },
	PreProc = {},
	Special = { fg = uniq.Special },
	Statement = { fg = uniq.Prominent },
	StorageClass = { fg = text.Lighter },
	String = { fg = uniq.Prominent },
	Tag = { fg = text.Lighter },
	Title = { fg = duo.Duo2, style = style.Bold },
	Todo = {},
	Type = { fg = uniq.Striking },
	Underlined = { fg = duo.Duo1, style = style.Underline },
}

return M
