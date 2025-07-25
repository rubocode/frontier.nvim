-- DEFAULT EDITOR GENERAL PROFILE
-- JUL 09, 2025

local canvas = require("empty.archetype.canvas")
local text = require("empty.archetype.text")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	canvas = mapper.pick(theme, "archetype.canvas")
	text = mapper.pick(theme, "archetype.text")
end

local infuse = function()
	profile = {
		IncSearch = { fg = canvas.Darker, bg = text.Lighter },
		Search = { fg = canvas.Darker, bg = text.Lighter },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
