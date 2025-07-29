-- FIREWATCH EDITOR TAB PROFILE
-- JUL 29, 2025

local syntax = require("theme.firewatch.palette.syntax")
local uno = require("theme.firewatch.palette.uno")

local M = {
	TabLine = { fg = uno.Uno4 },
	TabLineFill = {},
	TabLineSel = { fg = syntax.Fg },
}

return M
