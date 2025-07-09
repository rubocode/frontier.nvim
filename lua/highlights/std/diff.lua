-- DIFF HIGHLIGHTS
-- JUL 06, 2025

local diff = require("theme.std.diff")

local M = {}

M.PROFILE = {
	DiffAdd = diff.Add,
	DiffChange = diff.Change,
	DiffDelete = diff.Delete,
	DiffText = diff.Text,
}

M.LINKS = {}

return M
