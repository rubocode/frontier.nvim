-- DEFAULT EDITOR MENU PROFILE
-- JUL 15, 2025

local bg = require("empty.map.background")
local fg = require("empty.map.foreground")
local mapper = require("util.mapper")

local M = {}
local profile = {}

local remap = function(theme)
	bg = mapper.pick(theme, "map.background")
	fg = mapper.pick(theme, "map.foreground")
end

local infuse = function()
	profile = {
		Pmenu = { fg = fg.Quiet, bg = bg.Lighter },
		PmenuSbar = { fg = fg.Normal, bg = bg.Lighter },
		PmenuSel = { fg = bg.Lighter, bg = fg.Normal },
		PmenuThumb = { fg = bg.Lighter, bg = fg.Normal },
		WildMenu = { fg = fg.Lighter, bg = bg.Lighter },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
