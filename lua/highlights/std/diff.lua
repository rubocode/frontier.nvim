-- DIFF HIGHLIGHTS
-- JUL 06, 2025

local diff = require("empty.mixin.diff")

local M = {}
local infused = {}

local remap = function(scheme)
	diff = require("scheme." .. scheme .. ".mixin.diff")
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

function M.get(scheme)
	remap(scheme)
	infuse()
	return infused
end

return M
