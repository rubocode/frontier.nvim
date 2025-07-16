-- EDITOR DIFF HIGHLIGHTS
-- JUL 06, 2025

local diff = require("empty.profile.editor.diff")

local M = {}
local infused = {}

local remap = function(theme)
	diff = require(theme .. ".profile.editor.diff")
end

local infuse = function()
	infused.PROFILE = {
		DiffAdd = diff.DiffAdd,
		DiffChange = diff.DiffChange,
		DiffDelete = diff.DiffDelete,
		DiffText = diff.DiffText,
		Added = diff.Added,
		Changed = diff.Changed,
		Removed = diff.Removed,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
