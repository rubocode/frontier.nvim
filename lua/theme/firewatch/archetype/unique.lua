-- FIREWATCH UNIQUE ARCHETYPE
-- JUL 15, 2025

local duo = require("theme.firewatch.palette.duo")
local uno = require("theme.firewatch.palette.uno")

local syntax = require("theme.firewatch.palette.syntax")

local M = {
	Accent = syntax.Accent,
	Distinct = uno.Uno1,
	Dynamic = syntax.Fg,
	Fixed = duo.Duo3,
	Peculiar = syntax.Fg,
	Prominent = duo.Duo1,
	Special = syntax.Fg,
	Striking = duo.Duo1,
}

return M
