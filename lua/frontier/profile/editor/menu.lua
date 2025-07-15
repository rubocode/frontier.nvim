-- FRONTIER EDITIR MENU PROFILE
-- JUL 03, 2025

local fg = require("frontier.map.foreground")

local M = {
	Pmenu = { fg = fg.Darkest, bg = fg.Normal },
	PmenuSbar = { fg = fg.Normal, bg = fg.Darkest },
	PmenuSel = { fg = fg.Lighter, bg = fg.Darkest },
	PmenuThumb = { fg = fg.Normal, bg = fg.Darker },
	WildMenu = { fg = fg.Lighter, bg = fg.Darkest },
}

return M
