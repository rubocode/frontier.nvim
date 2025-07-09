-- MENU THEME COLORS
-- JUL 03, 2025

local grey = require("colors.grey")

local M = {
	Pmenu = { fg = grey.Quieter, bg = grey.Normal },
	PmenuSbar = { fg = grey.Normal, bg = grey.Quiet },
	PmenuSel = { fg = grey.Loud, bg = grey.Quieter },
	PmenuThumb = { fg = grey.Normal, bg = grey.Quiet },
	WildMenu = { fg = grey.Loud, bg = grey.Quieter },
}

return M
