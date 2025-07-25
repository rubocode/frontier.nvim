-- DEFAULT EDITOR CURSOR PROFILE
-- JUL 15, 2025

local canvas = require("empty.archetype.canvas")
local uniq = require("empty.archetype.unique")
local text = require("empty.archetype.text")

local style = require("highlights.style")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	canvas = mapper.pick(theme, "archetype.canvas")
	uniq = mapper.pick(theme, "archetype.unique")
	text = mapper.pick(theme, "archetype.text")
end

local infuse = function()
	profile = {
		Cursor = { style = style.Reverse },
		CursorColumn = { fg = text.Lighter, bg = canvas.Lighter },
		CursorLine = { bg = canvas.Darker },
		CursorLineNr = { fg = uniq.Peculiar, style = style.Bold },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
