-- DEFAULT EDITOR MENU PROFILE
-- JUL 15, 2025

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
		Pmenu = { fg = text.Normal, bg = canvas.Lighter },
		PmenuSbar = { fg = text.Normal, bg = canvas.Lighter },
		PmenuSel = { fg = canvas.Normal, bg = text.Normal },
		PmenuThumb = { fg = canvas.Normal, bg = text.Normal },
		WildMenu = { fg = text.Lighter, bg = canvas.Normal },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
