-- DIFF HIGHLIGHT COLORS
-- JUL 06, 2025

local diff = require("frontier.theme.diff")

local M = {}

M.CHANGES = {
	DiffAdd = diff.Add,
	DiffChange = diff.Change,
	DiffDelete = diff.Delete,
	DiffText = diff.Text,
}

M.LINKS = {}

return M
