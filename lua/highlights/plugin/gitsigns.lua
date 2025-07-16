-- GITSIGNS PLUGIN HIGHLIGHTS
-- JUL 05, 2025

local diff = require("empty.map.diff")

local M = {}
local infused = {}

M.URL = "https://github.com/lewis6991/gitsigns.nvim"

local remap = function(theme)
	diff = require(theme .. ".map.diff")
end

local infuse = function()
	infused.PROFILE = {
		GitSignsAdd = { fg = diff.Add },
		GitSignsChange = { fg = diff.Change },
		GitSignsDelete = { fg = diff.Delete },
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
