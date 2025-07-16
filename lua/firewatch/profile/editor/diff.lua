-- FIREWATCH EDITOR DIFF PROFILE
-- JUL 15, 2025

local diff = require("firewatch.map.diff")

local M = {
	DiffAdd = diff.Add,
	DiffChange = diff.Change,
	DiffDelete = diff.Delete,
	DiffText = diff.Text,
	Added = diff.Add,
	Changed = diff.Change,
	Removed = diff.Delete,
}

return M
