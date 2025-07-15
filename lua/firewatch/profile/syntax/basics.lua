-- FIREWATCH SYNTAX BASICS PROFILE
-- JUL 15, 2025

local duo = require("firewatch.palette.duo")
local syntax = require("firewatch.palette.syntax")
local uno = require("firewatch.palette.uno")

local M = {
	Comment = { fg = uno.Uno4 },
	Constant = { fg = duo.Duo2 },
	Delimiter = { fg = uno.Uno4 },
	Function = { fg = uno.Uno2 },
	Identifier = { fg = uno.Uno3 },
	Keyword = { fg = uno.Uno1 },
	Macro = {},
	Operator = { fg = syntax.Accent },
	Special = { fg = uno.Uno3 },
	Statement = { fg = duo.Duo1 },
	StorageClass = { fg = duo.Duo2 },
	String = { fg = duo.Duo1 },
	Type = { fg = duo.Duo1 },
}

return M
