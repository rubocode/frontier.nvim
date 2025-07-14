-- NORMAL COLORS
-- JUL 03, 2025

local menu = require("empty.editor.menu")

local M = {}
local infused = {}

local remap = function(theme)
	menu = require(theme .. ".editor.menu")
end

local infuse = function()
	infused.PROFILE = {
		Pmenu = menu.Pmenu,
		PmenuSbar = menu.PmenuSbar,
		PmenuSel = menu.PmenuSel,
		PmenuThumb = menu.PmenuThumb,
		WildMenu = menu.WildMenu,
	}
	infused.LINKS = {}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
