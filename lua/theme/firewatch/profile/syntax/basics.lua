-- FIREWATCH SYNTAX BASICS PROFILE
-- JUL 15, 2025

local text = require("theme.firewatch.archetype.text")
local type = require("theme.firewatch.archetype.type")
local uniq = require("theme.firewatch.archetype.unique")

local style = require("highlights.style")

local M = {
	Comment = { fg = text.Quiet },
	Constant = { fg = uniq.Fixed },
	Debug = {},
	Delimiter = { fg = text.Quiet },
	Function = { fg = uniq.Dynamic },
	Identifier = { fg = uniq.Special },
	Keyword = { fg = type.Keyword },
	Label = {},
	Operator = { fg = uniq.Accent },
	PreProc = {},
	Special = { fg = uniq.Special },
	Statement = { fg = uniq.Prominent },
	StorageClass = { fg = text.Lighter },
	String = { fg = uniq.Prominent },
	Tag = { fg = text.Lighter },
	Title = { fg = uniq.Distinct },
	Todo = {},
	Type = { fg = uniq.Striking },
	Underlined = { style = style.Underline },
}

return M
