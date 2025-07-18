-- FIREWATCH EDITOR CURSOR PROFILE
-- JUL 06, 2025

local syntax = require("theme.firewatch.palette.syntax")

local M = {
	Cursor = { fg = syntax.Bg, bg = syntax.Accent },
	CursorColumn = { bg = syntax.CursorLine },
	CursorLine = { bg = syntax.CursorLine },
	CursorLineNr = { fg = syntax.CursorLine },
}

return M
