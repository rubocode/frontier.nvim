-- DEFAULT EDITOR DIFF PROFILE
-- JUL 15, 2025

local diff = require("empty.archetype.diff")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	diff = mapper.pick(theme, "archetype.diff")
end

local infuse = function()
	profile = {
		DiffAdd = { fg = diff.Add },
		DiffChange = { fg = diff.Change },
		DiffDelete = { fg = diff.Delete },
		DiffText = { fg = diff.Text },
		Added = { fg = diff.Add },
		Changed = { fg = diff.Change },
		Removed = { fg = diff.Delete },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
