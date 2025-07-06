-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

local grey = require("colors.rubo.grey")

local M = {}

M.CHANGES = {
	StatusLineNC = { fg = grey.Lighter, bg = grey.Quieter },
	StatusLineTerm = { fg = grey.Loud, bg = grey.AlmostBlack },
	StatusLineTermNC = { fg = grey.Lighter, bg = grey.Darker },
	StatusLine = { fg = grey.AlmostBlack, bg = grey.Lighter },
}

M.LINKS = {}

return M
