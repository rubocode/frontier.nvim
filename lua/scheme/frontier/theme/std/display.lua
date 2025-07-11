-- DISPLAY THEME COLORS
-- JUN 08, 2025

local black = require("scheme.frontier.colors.black")
local grey = require("scheme.frontier.colors.grey")

local M = {
	Prominent = { fg = grey.Lighter, bg = grey.Darkest },
	Standard = { fg = black.Almost, bg = grey.Darker },
	Inactive = { fg = grey.Darker, bg = grey.Darkest },
}

return M
