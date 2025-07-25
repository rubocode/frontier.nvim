-- DEFAULT EDITOR CURSOR PROFILE
-- JUL 15, 2025

local canvas = require("empty.archetype.canvas")
local uniq = require("empty.archetype.unique")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	canvas = mapper.pick(theme, "archetype.canvas")
	uniq = mapper.pick(theme, "archetype.unique")
end

local infuse = function()
	profile = {
		Cursor = { fg = canvas.Darker, bg = uniq.Accent },
		CursorColumn = { bg = canvas.Lighter },
		CursorLine = { bg = canvas.Darker },
		CursorLineNr = { fg = uniq.Peculiar },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
