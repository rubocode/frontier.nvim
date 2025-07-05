-- vim editor highlight colors
--

local grey = require("frontier.theme.colors.grey")

local M = {}

M.CHANGES = {
	StatusLine = { fg = grey.AlmostBlack, bg = grey.Lighter },
	StatusLineNC = { fg = grey.Lighter, bg = grey.AlmostBlack },
	StatusLineTerm = { fg = grey.Loud, bg = grey.AlmostBlack },
	StatusLineTermNC = { fg = grey.Lighter, bg = grey.Darker },
}

M.LINKS = {}

return M
