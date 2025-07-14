-- TEXT
-- JUL 13, 2025

local syntax = require("firewatch.palette.syntax")
local uno = require("firewatch.palette.uno")

local M = {
	Light = {
		Loud = uno.Uno1,
		Normal = syntax.Fg,
		Quiet = uno.Uno4,
	},
	Dark = {
		Loud = syntax.Bg,
		Normal = uno.Uno4,
		Quiet = uno.Uno4,
	},
}

return M
