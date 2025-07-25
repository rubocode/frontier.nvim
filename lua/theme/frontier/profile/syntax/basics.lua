-- FRONTIER SYNTAX BASICS PROFILE
-- JUL 06, 2025

local canvas = require("theme.frontier.archetype.canvas")
local text = require("theme.frontier.archetype.text")
local uniq = require("theme.frontier.archetype.unique")

local M = {
	Comment = { fg = text.Quiet },
	Constant = { fg = uniq.Fixed },
	Debug = {},
	Delimiter = { fg = text.Darker },
	Function = { fg = uniq.Dynamic },
	Identifier = { fg = uniq.Dynamic },
	Keyword = { fg = text.Lighter },
	Label = {},
	Operator = { fg = text.Lighter },
	PreProc = { fg = uniq.Peculiar },
	Special = { fg = uniq.Special },
	Statement = { fg = text.Lighter },
	StorageClass = { fg = text.Lighter },
	String = { fg = uniq.Prominent },
	Tag = {},
	Title = { fg = uniq.Distinct },
	Todo = { fg = canvas.Normal, bg = uniq.Striking },
	Type = { fg = uniq.Striking },
	Underlined = {},
}

return M
