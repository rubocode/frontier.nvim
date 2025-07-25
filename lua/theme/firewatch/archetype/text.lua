-- FIREWATCH TEXT ARCHETYPE
-- JUL 15, 2025

local uno = require("theme.firewatch.palette.uno")
local syntax = require("theme.firewatch.palette.syntax")

local M = {
	Quiet = uno.Uno4,
	Darker = uno.Uno4,
	Normal = syntax.Fg,
	Lighter = syntax.Selection,
	Loud = uno.Uno1,
}

return M
