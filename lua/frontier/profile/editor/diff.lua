-- FRONIER EDITOR DIFF PROFILE
-- JUL 15, 2025

local diff = require("frontier.map.diff")

local M = {
	DiffAdd = { fg = diff.Add },
	DiffChange = { fg = diff.Change },
	DiffDelete = { fg = diff.Delete },
	DiffText = { fg = diff.Text },
	Added = { fg = diff.Add },
	Changed = { fg = diff.Change },
	Removed = { fg = diff.Delete },
}

return M
