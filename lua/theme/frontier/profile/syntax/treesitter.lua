-- FRONTIER SYNTAX TREESITTER PROFILE
-- JUL 15, 2025

local grey = require("palette.default.grey")
local yellow = require("palette.default.yellow")

local M = {
	atVariable = { fg = grey.Lighter },
	atVariableBuiltin = { fg = grey.Lighter },
	atVariableMember = { fg = grey.Lighter },
	atVariableParameter = { fg = yellow.Normal },
}

return M
