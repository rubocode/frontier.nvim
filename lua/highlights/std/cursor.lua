-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

local grey = require("frontier.colors.grey")
local style = require("highlights.style")

local M = {}

M.CHANGES = {
	Cursor = { style = style.Reverse },
	CursorColumn = { fg = grey.AlmostBlack, bg = grey.Darker },
	CursorLine = { fg = grey.Lighter, bg = grey.Quiet },
	CursorLineNr = { fg = grey.Lighter, bg = grey.Quiet },
}

M.LINKS = {
	CursorIM = { link = "Cursor" },
}

return M
