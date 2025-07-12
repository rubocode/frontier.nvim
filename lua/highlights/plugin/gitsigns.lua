-- GITSIGNS HIGHLIGHTS
-- JUL 05, 2025

local diff = require("empty.mixin.diff")

local M = {}
local infused = {}

M.URL = "https://github.com/lewis6991/gitsigns.nvim"

local remap = function(scheme)
	diff = require("scheme." .. scheme .. ".theme.mixin.diff")
end

local infuse = function()
	infused.PROFILE = {
		GitSignsAdd = diff.Add,
		GitSignsChange = diff.Change,
		GitSignsDelete = diff.Delete,
	}
	infused.LINKS = {}
end

function M.get(scheme)
	remap(scheme)
	infuse()
	return infused
end

return M
