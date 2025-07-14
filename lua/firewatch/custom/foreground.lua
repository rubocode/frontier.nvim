-- FOREGROUND
-- JUL 13, 2025

local syntax = require("firewatch.palette.syntax")
local uno = require("firewatch.palette.uno")

local M = {
	Quiet = uno.Uno4,
	Darker = uno.Uno4,
	Normal = syntax.Fg,
	Lighter = syntax.Selection,
	Loud = uno.Uno1,
}

return M
