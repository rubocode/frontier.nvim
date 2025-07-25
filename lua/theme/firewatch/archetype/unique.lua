-- FIREWATCH UNIQUE ARCHETYPE
-- JUL 15, 2025

local duo = require("theme.firewatch.palette.duo")
local uno = require("theme.firewatch.palette.uno")

local syntax = require("theme.firewatch.palette.syntax")

local M = {
	Accent = syntax.Accent,
	Distinct = uno.Uno1,
	Dynamic = uno.Uno2,
	Fixed = duo.Duo3,
	Peculiar = syntax.Fg,
	Prominent = duo.Duo1,
	Special = uno.Uno3,
	Striking = duo.Duo1,
}

return M
