-- MENU THEME COLORS
-- JUL 03, 2025

local grey = require("frontier.palette.grey")

local M = {
	Pmenu = { fg = grey.Darkest, bg = grey.Normal },
	PmenuSbar = { fg = grey.Normal, bg = grey.Darker },
	PmenuSel = { fg = grey.Lighter, bg = grey.Darkest },
	PmenuThumb = { fg = grey.Normal, bg = grey.Darker },
	WildMenu = { fg = grey.Lighter, bg = grey.Darkest },
}

return M
