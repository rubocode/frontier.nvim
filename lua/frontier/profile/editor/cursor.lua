-- FRONTIER EDITOR CURSOR PROFILE
-- JUL 15, 2025

local grey = require("palette.shared.grey")
local style = require("highlights.style")

local M = {
	Cursor = { style = style.Reverse },
	CursorColumn = { fg = grey.Darkest, bg = grey.Normal },
	CursorLine = { fg = grey.Lighter, bg = grey.Darkest },
	CursorLineNr = { fg = grey.Lighter, bg = grey.Darker },
}

return M
