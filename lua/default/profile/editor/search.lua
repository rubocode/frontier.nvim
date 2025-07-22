-- DEFAULT EDITOR GENERAL PROFILE
-- JUL 09, 2025

local canvas = require("empty.map.canvas")
local text = require("empty.map.text")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	canvas = mapper.pick(theme, "map.canvas")
	text = mapper.pick(theme, "map.text")
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
