-- APPRENTICE DIFF PROFILE
-- JUL 29, 2025

local diff = require("theme.apprentice.palette.diff")
local grey = require("theme.apprentice.palette.grey")

local style = require("highlights.style")

local M = {
	DiffAdd = { fg = diff.Add, bg = grey.Dark, style = style.Reverse },
	DiffChange = { fg = diff.Change, bg = grey.Dark, style = style.Reverse },
	DiffDelete = { fg = diff.Delete, bg = grey.Dark, style = style.Reverse },
	DiffText = { fg = diff.Text, bg = grey.Dark, style = style.Reverse },
	Added = { fg = diff.Add },
	Changed = { fg = diff.Change },
	Removed = { fg = diff.Delete },
}

return M
