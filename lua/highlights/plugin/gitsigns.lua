-- GITSIGNS HIGHLIGHTS
-- JUL 05, 2025

local diff = require("theme.std.diff")

local M = {}

M.URL = "https://github.com/lewis6991/gitsigns.nvim"

M.PROFILE = {
	GitSignsAdd = diff.Add,
	GitSignsChange = diff.Change,
	GitSignsDelete = diff.Delete,
}

M.LINKS = {}

return M
