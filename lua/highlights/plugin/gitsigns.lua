-- GITSIGNS HIGHLIGHTS
-- JUL 05, 2025

local diff = require("empty.shared.diff")

local M = {}
local infused = {}

M.URL = "https://github.com/lewis6991/gitsigns.nvim"

local remap = function(theme)
	diff = require(theme .. ".shared.diff")
end

local infuse = function()
	infused.PROFILE = {
		GitSignsAdd = diff.Add,
		GitSignsChange = diff.Change,
		GitSignsDelete = diff.Delete,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
