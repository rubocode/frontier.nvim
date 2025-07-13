-- SYNTAX BASIC THEME COLORS
-- JUL 06, 2025

local uno = require("firewatch.palette.uno")
local duo = require("firewatch.palette.duo")

local M = {
	Variable = { fg = uno.Uno2 },
	VariableBuiltin = { fg = duo.Duo2 },
	VariableMember = { fg = uno.Uno2 },
	VariableParameter = { fg = uno.Uno2 },
}

return M
