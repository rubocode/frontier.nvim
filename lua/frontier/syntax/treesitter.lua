-- SYNTAX BASIC THEME COLORS
-- JUL 06, 2025

local grey = require("frontier.colors.grey")
local yellow = require("frontier.colors.yellow")

local M = {
	FunctionBuiltin = { fg = yellow.Normal },
	Module = { fg = yellow.Normal },
	TypeBuiltin = { fg = yellow.Normal },
	Variable = { fg = grey.Normal },
	VariableParameter = { fg = grey.Normal },
}

return M
