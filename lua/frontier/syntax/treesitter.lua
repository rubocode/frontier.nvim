-- SYNTAX BASIC THEME COLORS
-- JUL 06, 2025

local grey = require("palette.shared.grey")
local yellow = require("palette.shared.yellow")

local M = {
	VariableMember = { fg = grey.Lighter },
	VariableParameter = { fg = yellow.Normal },
}

return M
