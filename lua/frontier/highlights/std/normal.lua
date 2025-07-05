-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

local grey = require("frontier.theme.colors.grey")

local M = {}

M.CHANGES = {
	ColorColumn = { bg = grey.AlmostBlack },
	Cursor = { fg = grey.Lighter, bg = grey.Black },
	CursorColumn = { fg = grey.AlmostBlack, bg = grey.Darker },
	CursorLine = { fg = grey.Lighter, bg = grey.Black },
	CursorLineNr = { fg = grey.Lighter, bg = grey.Quiet },
	LineNr = { fg = grey.Quiet, bg = grey.Black },
	Normal = { fg = grey.Normal, bg = grey.AlmostBlack },
	NormalFloat = { bg = grey.AlmostBlack },
	StatusLineNC = { fg = grey.Lighter, bg = grey.Quieter },
	StatusLineTerm = { fg = grey.Loud, bg = grey.AlmostBlack },
	StatusLineTermNC = { fg = grey.Lighter, bg = grey.Darker },
	StatusLine = { fg = grey.AlmostBlack, bg = grey.Lighter },
}

M.LINKS = {
	CursorIM = { link = "Cursor" },
	Terminal = { link = "Normal" },
}

return M
