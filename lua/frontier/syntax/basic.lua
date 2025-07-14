-- SYNTAX BASIC THEME COLORS
-- JUL 06, 2025

local syntax = require("frontier.model.syntax")

local M = {
	Comment = { fg = syntax.Quiet },
	Constant = { fg = syntax.Constant },
	Delimiter = { fg = syntax.Darker },
	Function = { fg = syntax.Function },
	Identifier = { fg = syntax.Identifier },
	Keyword = { fg = syntax.Loud },
	Macro = { fg = syntax.Darker },
	Operator = { fg = syntax.Accent },
	Special = { fg = syntax.Special },
	Statement = { fg = syntax.Lighter },
	StorageClass = { fg = syntax.Lighter },
	String = { fg = syntax.String },
	Type = { fg = syntax.Type },
}

return M
