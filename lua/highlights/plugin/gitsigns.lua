-- GITSIGNS HIGHLIGHTS
-- JUL 05, 2025

local diff = require("profile.std.diff")

local M = {}

M.PROFILE = {
	GitSignsAdd = diff.Add,
	GitSignsChange = diff.Change,
	GitSignsDelete = diff.Delete,
}

M.LINKS = {}

return M
