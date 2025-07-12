-- SEGMENT THEME COLORS
-- JUN 08, 2025

local black = require("frontier.colors.black")
local grey = require("frontier.colors.grey")
local style = require("highlights.style")

local M = {
	Prominent = { fg = black.Almost, bg = grey.Darker, style = style.Bold },
	Standard = { fg = black.Almost, bg = grey.Quiet },
	Inactive = { fg = grey.Darker, bg = grey.Darkest },
}

return M
