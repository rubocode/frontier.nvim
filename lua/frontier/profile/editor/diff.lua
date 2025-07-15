-- FRONIER EDITOR DIFF PROFILE
-- JUL 15, 2025

local diff = require("frontier.custom.diff")

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
