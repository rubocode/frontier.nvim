-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

local grey = require("frontier.theme.colors.grey")

local M = {}

M.CHANGES = {
	Normal = { fg = grey.Normal, bg = grey.AlmostBlack },
	NormalFloat = { bg = grey.AlmostBlack },

	ColorColumn = { bg = grey.AlmostBlack },
	Cursor = { fg = grey.AlmostBlack, bg = grey.Lighter },
	CursorColumn = { fg = grey.AlmostBlack, bg = grey.Darker },
	CursorLine = { fg = grey.Lighter, bg = grey.Black },
	CursorLineNr = { fg = grey.Lighter, bg = grey.Quiet },
	LineNr = { fg = grey.Darker, bg = grey.Black },
}

M.LINKS = {
	CursorIM = { link = "Cursor" },
	Terminal = { link = "Normal" },
}

return M
