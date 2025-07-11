-- NORMAL THEME COLORS
-- JUL 06, 2025

local grey = require("scheme.frontier.colors.grey")
local black = require("scheme.frontier.colors.black")

local M = {
	LineNr = { fg = grey.Darker, bg = black.Absolute },
	Normal = { fg = grey.Normal, bg = black.Almost },
	NormalFloat = { bg = black.Absolute },
}

return M
