-- SYNTAX MODEL
-- JUL 14, 2025

local duo = require("firewatch.palette.duo")
local uno = require("firewatch.palette.uno")
local syntax = require("firewatch.palette.syntax")

local M = {
	Accent = syntax.Accent,
	Background = syntax.Bg,
	Constant = duo.Duo2,
	Darker = uno.Uno2,
	Function = uno.Uno2,
	Identifier = uno.Uno3,
	Keyword = uno.Uno1,
	Lighter = syntax.Selection,
	Loud = uno.Uno1,
	Normal = syntax.Fg,
	Number = duo.Duo1,
	Peculiar = duo.Duo3,
	Quiet = uno.Uno4,
	Special = uno.Uno3,
	String = duo.Duo1,
	Type = duo.Duo1,
}

return M
