-- GITSIGNS HIGHLIGHTS
-- JUL 05, 2025

local diff = require("frontier.theme.diff")

local M = {}

M.CHANGES = {
	GitSignsAdd = diff.Add,
	GitSignsChange = diff.Change,
	GitSignsDelete = diff.Delete,
}

M.LINKS = {}

return M
