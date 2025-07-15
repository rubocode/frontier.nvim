-- FIREWATCH FOREGROUND MAP
-- JUL 15, 2025

local duo = require("firewatch.palette.duo")
local uno = require("firewatch.palette.uno")
local syntax = require("firewatch.palette.syntax")

local M = {
	Accent = syntax.Accent,
	Darker = uno.Uno2,
	Lighter = syntax.Selection,
	Loud = uno.Uno1,
	Normal = syntax.Fg,
	Peculiar = duo.Duo3,
	Quiet = uno.Uno4,
	Special = uno.Uno3,
}

return M
