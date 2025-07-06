-- NORMAL COLORS
-- JUL 03, 2025

local grey = require("frontier.colors.grey")
local yellow = require("frontier.colors.yellow")

local M = {}

M.CHANGES = {
	Pmenu = { fg = grey.Lighter, bg = grey.Quiet },
	PmenuSbar = { bg = grey.Quiet },
	PmenuSel = { fg = grey.AlmostBlack, bg = grey.Lighter },
	PmenuThumb = { fg = grey.Darker, bg = grey.Darker },
	WildMenu = { fg = grey.AlmostBlack, bg = yellow.Lighter },
}

M.LINKS = {}

return M
