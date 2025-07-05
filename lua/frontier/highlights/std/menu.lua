-- NORMAL COLORS
-- JUL 03, 2025

local grey = require("frontier.theme.colors.grey")
local normal = require("frontier.theme.colors.normal")
local brighter = require("frontier.theme.colors.brighter")

local M = {}

M.CHANGES = {
	Pmenu = { fg = grey.Lighter, bg = grey.Darker },
	PmenuSbar = { bg = grey.Quiet },
	PmenuSel = { fg = grey.AlmostBlack, bg = grey.Lighter },
	PmenuThumb = { fg = grey.Darker, bg = grey.Darker },
	WildMenu = { fg = grey.AlmostBlack, bg = brighter.Yellow },
}

M.LINKS = {}

return M
