-- FIREWATCH EDITOR NORMAL PROFILE
-- JUL 15, 2025

local uno = require("firewatch.palette.uno")
local syntax = require("firewatch.palette.syntax")

local M = {
	EndOfBuffer = { fg = uno.Uno4 },
	LineNr = { fg = uno.Uno4, bg = syntax.Bg },
	Normal = { fg = syntax.Fg, syntax.Bg },
	NormalFloat = { bg = syntax.Bg },
	SignColumn = { bg = syntax.CursorLine },
}

return M
