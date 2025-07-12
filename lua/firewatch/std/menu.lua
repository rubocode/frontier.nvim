-- MENU THEME COLORS
-- JUL 03, 2025

local syntax = require("firewatch.palette.syntax")

local M = {
	Pmenu = { fg = syntax.Bg, bg = syntax.Fg },
	PmenuSbar = { fg = syntax.Fg, bg = syntax.Selection },
	PmenuSel = { fg = syntax.Selection, bg = syntax.Bg },
	PmenuThumb = { fg = syntax.Fg, bg = syntax.Bg },
	WildMenu = { fg = syntax.Selection, bg = syntax.Bg },
}

return M
