-- NORMAL COLORS
-- JUL 03, 2025

local menu = require("empty.std.menu")

local M = {}
local infused = {}

local remap = function(scheme)
	menu = require("scheme." .. scheme .. ".std.menu")
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

function M.get(scheme)
	remap(scheme)
	infuse()
	return infused
end

return M
