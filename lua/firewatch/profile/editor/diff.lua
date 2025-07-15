-- FIREWATCH EDITOR DIFF PROFILE
-- JUL 15, 2025

local diff = require("firewatch.custom.diff")

local M = {
	DiffAdd = diff.DiffAdd,
	DiffChange = diff.DiffChange,
	DiffDelete = diff.DiffDelete,
	DiffText = diff.DiffText,
	Added = diff.Added,
	Changed = diff.Changed,
	Removed = diff.Removed,
}

return M
