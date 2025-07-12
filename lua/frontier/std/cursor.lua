-- CURSOR THEME COLORS
-- JUL 06, 2025

local grey = require("frontier.colors.grey")
local style = require("highlights.style")

local M = {
	Cursor = { style = style.Reverse },
	CursorColumn = { fg = grey.Darkest, bg = grey.Normal },
	CursorLine = { fg = grey.Lighter, bg = grey.Darkest },
	CursorLineNr = { fg = grey.Lighter, bg = grey.Darker },
}

return M
