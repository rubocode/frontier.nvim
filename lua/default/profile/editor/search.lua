-- DEFAULT EDITOR GENERAL PROFILE
-- JUL 09, 2025

local bg = require("empty.map.background")
local fg = require("empty.map.foreground")
local odd = require("empty.map.odd")

local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	bg = mapper.pick(theme, "map.background")
	fg = mapper.pick(theme, "map.foreground")
	odd = mapper.pick(theme, "map.odd")
end

local infuse = function()
	profile = {
		IncSearch = { fg = bg.Darkest, bg = fg.Lighter },
		Search = { fg = bg.Darkest, bg = fg.Lighter },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
