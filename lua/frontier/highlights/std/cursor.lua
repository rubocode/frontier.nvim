-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

local grey = require("frontier.theme.colors.grey")

local M = {}

M.CHANGES = {
	Cursor = { fg = grey.AlmostBlack, bg = grey.Darker },
	CursorColumn = { fg = grey.AlmostBlack, bg = grey.Darker },
	CursorLine = { fg = grey.Lighter, bg = grey.Quiet },
	CursorLineNr = { fg = grey.Lighter, bg = grey.Quiet },
}

M.LINKS = {
	CursorIM = { link = "Cursor" },
}

return M
