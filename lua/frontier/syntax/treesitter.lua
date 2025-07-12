-- SYNTAX BASIC THEME COLORS
-- JUL 06, 2025

local grey = require("palette.shared.grey")
local yellow = require("palette.shared.yellow")

local M = {
	FunctionBuiltin = { fg = yellow.Normal },
	Module = { fg = yellow.Normal },
	TypeBuiltin = { fg = yellow.Normal },
	Variable = { fg = grey.Normal },
	VariableParameter = { fg = grey.Normal },
}

return M
