-- FIREWATCH EDITOR TAB PROFILE
-- JUL 29, 2025

local text = require("theme.firewatch.archetype.text")

local uno = require("theme.firewatch.palette.uno")

local M = {
	TabLine = { fg = uno.Uno4 },
	TabLineFill = {},
	TabLineSel = { fg = text.Normal },
}

return M
