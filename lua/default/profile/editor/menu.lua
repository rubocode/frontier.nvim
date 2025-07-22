-- DEFAULT EDITOR MENU PROFILE
-- JUL 15, 2025

local canvas = require("empty.map.canvas")
local text = require("empty.map.text")

local mapper = require("util.mapper")
local style = require("highlights.style")

local M = {}
local profile = {}

local remap = function(theme)
	canvas = mapper.pick(theme, "map.canvas")
	text = mapper.pick(theme, "map.text")
end

local infuse = function()
	profile = {
		Pmenu = { fg = text.Normal, bg = canvas.Normal },
		PmenuSbar = { fg = text.Normal, bg = canvas.Lighter },
		PmenuSel = { fg = canvas.Lighter, bg = text.Normal, style = style.Bold },
		PmenuThumb = { fg = canvas.Lighter, bg = text.Normal },
		WildMenu = { fg = text.Lighter, bg = canvas.Lighter },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return profile
end

return M
