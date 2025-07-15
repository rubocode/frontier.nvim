-- FRONTIER SYNTAX TREESITTER PROFILE
-- JUL 15, 2025

local grey = require("palette.shared.grey")
local yellow = require("palette.shared.yellow")

local M = {
	atVariableBuiltin = { fg = grey.Lighter },
	atVariableMember = { fg = grey.Lighter },
	atVariableParameter = { fg = yellow.Normal },
}

return M
