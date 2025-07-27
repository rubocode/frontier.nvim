-- APPRENTICE EDITOR MENU PROFILE
-- JUL 27, 2025

local grey = require("theme.apprentice.palette.grey")
local light = require("theme.apprentice.palette.light")
local std = require("theme.apprentice.palette.std")

local M = {
	Pmenu = { fg = grey.Lighter, bg = grey.Grey },
	PmenuSbar = { bg = grey.Medium },
	PmenuSel = { fg = grey.Darker, bg = std.Aqua },
	PmenuThumb = { fg = std.Aqua, bg = std.Aqua },
	WildMenu = { fg = grey.Darker, bg = light.Blue },
}

return M
