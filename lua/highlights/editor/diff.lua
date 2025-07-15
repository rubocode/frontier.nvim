-- EDITOR DIFF HIGHLIGHTS
-- JUL 06, 2025

local diff = require("std.map.diff")

local M = {}
local infused = {}

local remap = function(theme)
	diff = require(theme .. ".map.diff")
end

local infuse = function()
	infused.PROFILE = {
		DiffAdd = { fg = diff.DiffAdd },
		DiffChange = { fg = diff.DiffChange },
		DiffDelete = { fg = diff.DiffDelete },
		DiffText = { fg = diff.DiffText },
		Added = { fg = diff.Added },
		Changed = { fg = diff.Changed },
		Removed = { fg = diff.Removed },
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
