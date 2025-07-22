-- FRONTIER SYNTAX BASICS PROFILE
-- JUL 06, 2025

local text = require("theme.frontier.map.text")
local uniq = require("theme.frontier.map.unique")

local M = {
	Comment = { fg = text.Quiet },
	Constant = { fg = uniq.Fixed },
	Debug = {},
	Delimiter = { fg = text.Darker },
	Function = { fg = uniq.Dynamic },
	Identifier = { fg = text.Lighter },
	Keyword = { fg = text.Lighter },
	Label = {},
	Operator = { fg = text.Lighter },
	PreProc = { fg = uniq.Peculiar },
	Special = { fg = uniq.Special },
	Statement = { fg = text.Lighter },
	StorageClass = { fg = text.Lighter },
	String = { fg = uniq.Prominent },
	Tag = {},
	Title = {},
	Todo = {},
	Type = { fg = uniq.Prominent },
	Underlined = {},
}

return M
