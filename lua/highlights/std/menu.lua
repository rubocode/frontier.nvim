-- NORMAL COLORS
-- JUL 03, 2025

local menu = require("scheme.empty.theme.menu")

local M = {}
local result = {}

local initialize = function()
	result.CHANGES = {
		Pmenu = menu.Pmenu,
		PmenuSbar = menu.PmenuSbar,
		PmenuSel = menu.PmenuSel,
		PmenuThumb = menu.PmenuThumb,
		WildMenu = menu.WildMenu,
	}

	result.LINKS = {}
end

function M.get(name)
	menu = require("scheme." .. name .. ".theme.menu")
	initialize()
	return result
end

return M
