-- MENU THEME COLORS
-- JUL 03, 2025

local syntax = require("firewatch.palette.syntax")
local uno = require("firewatch.palette.uno")

local M = {
	Pmenu = { bg = syntax.Selection },
	PmenuSbar = { bg = syntax.Bg },
	PmenuSel = { bg = syntax.Bg },
	PmenuThumb = { bg = uno.LighterBlue },
	WildMenu = { fg = syntax.Fg, bg = uno.DarkerGrey },
}

return M
