-- SYNTAX BASIC THEME COLORS
-- JUL 06, 2025

local duo = require("firewatch.palette.duo")
local uno = require("firewatch.palette.uno")
local syntax = require("firewatch.palette.syntax")

local M = {
	Comment = { fg = uno.Uno4 },
	Constant = { fg = duo.Duo2 },
	Delimiter = { fg = uno.Uno3 },
	Function = { fg = uno.Uno2 },
	Identifier = { fg = uno.Uno3 },
	Keyword = { fg = uno.Uno1 },
	Macro = { fg = uno.Uno1 },
	Operator = { fg = syntax.Accent },
	Special = { fg = uno.Uno3 },
	Statement = { fg = duo.Duo1 },
	StorageClass = { fg = syntax.Selection },
	String = { fg = duo.Duo1 },
	Type = { fg = duo.Duo1 },
}

return M
