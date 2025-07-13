-- STATUS
-- JUN 13, 2025

local uno = require("firewatch.palette.uno")
local syntax = require("firewatch.palette.syntax")

local M = {
	Loud = { fg = syntax.Bg, bg = uno.Uno2 },
	Normal = { fg = syntax.Bg, bg = uno.Uno3 },
	Quiet = { fg = uno.Uno2, bg = uno.Uno4 },
}

return M
