-- CURSOR COLOR ABSTRACTION
-- JUL 06, 2025

local grey = require("colors.rubo.grey")
local style = require("highlights.style")

local M = {
	Cursor = { style = style.Reverse },
	CursorColumn = { fg = grey.AlmostBlack, bg = grey.Darker },
	CursorLine = { fg = grey.Lighter, bg = grey.Quiet },
	CursorLineNr = { fg = grey.Lighter, bg = grey.Quiet },
}

return M
