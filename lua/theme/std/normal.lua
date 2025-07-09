-- NORMAL THEME ABSTRACTION
-- JUL 06, 2025

local red = require("colors.red")
local grey = require("colors.grey")

local M = {
	ColorColumn = { bg = red.Lighter },
	LineNr = { fg = grey.Quiet, bg = grey.Black },
	Normal = { fg = grey.Normal, bg = grey.AlmostBlack },
	NormalFloat = { bg = grey.Quieter },
}

return M
