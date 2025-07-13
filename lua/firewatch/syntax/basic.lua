-- SYNTAX BASIC THEME COLORS
-- JUL 06, 2025

local duo = require("firewatch.palette.duo")
local uno = require("firewatch.palette.uno")

local M = {
	Comment = { fg = uno.Uno4 },
	Constant = { fg = duo.Duo2 },
	Delimiter = { fg = uno.Uno4 },
	Function = { fg = uno.Uno2 },
	Identifier = { fg = uno.Uno3 },
	Macro = { fg = uno.Uno1 },
	Special = { fg = uno.Uno3 },
	Statement = { fg = duo.Duo1 },
	String = { fg = duo.Duo1 },
	Type = { fg = duo.Duo1 },
}

return M
