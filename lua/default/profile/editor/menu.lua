-- DEFAULT EDITOR MENU PROFILE
-- JUL 15, 2025

local bg = require("empty.map.background")
local fg = require("empty.map.foreground")
local mapper = require("util.mapper")
local style = require("highlights.style")

local M = {}
local profile = {}

local remap = function(theme)
	bg = mapper.load(theme, "map.background")
	fg = mapper.load(theme, "map.foreground")
end

local infuse = function()
	profile = {
		Pmenu = { fg = fg.Normal, bg = bg.Normal },
		PmenuSbar = { fg = fg.Normal, bg = bg.Lighter },
		PmenuSel = { fg = bg.Lighter, bg = fg.Normal, style = style.Bold },
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
