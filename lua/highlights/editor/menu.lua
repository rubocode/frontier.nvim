-- EDITOR MENU HIGHLIGHTS
-- JUL 03, 2025

local menu = require("empty.profile.editor.menu")
local mapper = require("util.mapper")

local M = {}
local infused = {}

local remap = function(theme)
	menu = mapper.pick(theme, "profile.editor.menu")
end

local infuse = function()
	infused.PROFILE = {
		Pmenu = menu.Pmenu,
		PmenuSbar = menu.PmenuSbar,
		PmenuSel = menu.PmenuSel,
		PmenuThumb = menu.PmenuThumb,
		WildMenu = menu.WildMenu,
	}
	infused.LINKS = {
		PmenuKind = { link = "Pmenu" },
		PmenuKindSel = { link = "PmenuSel" },
		PmenuMatch = { link = "Pmenu" },
		PmenuMatchSeli = { link = "PmenuSel" },
		PmenuExtra = { link = "Pmenu" },
		PmenuExtraSel = { link = "PmenuSel" },
	}
end

function M.get(theme)
	remap(theme)
	infuse()
	return infused
end

return M
