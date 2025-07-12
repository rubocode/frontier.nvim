-- DIFF HIGHLIGHTS
-- JUL 06, 2025

local diff = require("empty.shared.diff")

local M = {}
local infused = {}

local remap = function(theme)
	diff = require(theme .. ".shared.diff")
end

local infuse = function()
	infused.PROFILE = {
		DiffAdd = diff.Add,
		DiffChange = diff.Change,
		DiffDelete = diff.Delete,
		DiffText = diff.Text,
		Added = diff.Add,
		Changed = diff.Change,
		Removed = diff.Delete,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
