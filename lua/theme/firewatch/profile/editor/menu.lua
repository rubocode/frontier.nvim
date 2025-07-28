-- FIREWATCH EDITOR MENU PROFILE
-- JUL 28, 2025

local canvas = require("theme.firewatch.archetype.canvas")
local text = require("theme.firewatch.archetype.text")
local uniq = require("theme.firewatch.archetype.unique")

local M = {
	Pmenu = { fg = canvas.Lighter, bg = text.Normal },
	PmenuSbar = { bg = text.Normal },
	PmenuSel = { fg = text.Lighter, bg = text.Quiet },
	PmenuThumb = { fg = text.Quiet, bg = text.Quiet },
	WildMenu = { fg = text.Darker, bg = uniq.Accent },
}

return M
