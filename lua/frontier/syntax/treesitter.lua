-- SYNTAX BASIC THEME COLORS
-- JUL 06, 2025

local syntax = require("frontier.model.syntax")

local M = {
	VariableBuiltin = { fg = syntax.Special },
	VariableMember = { fg = syntax.Lighter },
	VariableParameter = { fg = syntax.Peculiar },
}

return M
