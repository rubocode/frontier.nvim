-- NORMAL COLOR ABSTRACTION
-- JUL 06, 2025

local red = require("frontier.colors.red")
local grey = require("frontier.colors.grey")

local M = {
	ColorColumn = { bg = red.Lighter },
	LineNr = { fg = grey.Quiet, bg = grey.Black },
	Normal = { fg = grey.Normal, bg = grey.AlmostBlack },
	NormalFloat = { bg = grey.Quieter },
}

return M
