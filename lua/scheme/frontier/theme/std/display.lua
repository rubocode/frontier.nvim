-- DISPLAY THEME COLORS
-- JUN 08, 2025

local grey = require("scheme.frontier.colors.grey")

local M = {
	Prominent = { fg = grey.Loud, bg = grey.Darkest },
	Standard = { fg = grey.Lighter, bg = grey.Quiet },
	Inactive = { fg = grey.Darker, bg = grey.Darkest },
}

return M
