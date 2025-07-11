-- DISPLAY THEME COLORS
-- JUN 08, 2025

local grey = require("scheme.frontier.colors.grey")

local bg = require("scheme.frontier.theme.meta.background")
local fg = require("scheme.frontier.theme.meta.foreground")

local M = {
	Prominent = { fg = grey.Lighter, bg = grey.Darker },
	Standard = { fg = bg.Normal, bg = fg.Normal },
	Inactive = { fg = grey.Darker, bg = grey.Darkest },
}

return M
