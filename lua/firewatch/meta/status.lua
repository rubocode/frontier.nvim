-- STATUS
-- JUN 13, 2025

local uno = require("firewatch.palette.uno")
local syntax = require("firewatch.palette.syntax")
local grey = require("palette.shared.grey")

local M = {
	Loud = { fg = syntax.Bg, bg = uno.Uno2 },
	Normal = { fg = syntax.Bg, bg = uno.Uno3 },
	Quiet = { fg = uno.Uno4, bg = grey.Darkest },
}

return M
