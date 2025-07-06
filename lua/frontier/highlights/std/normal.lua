-- NORMAL HIGHLIGHTS
-- JUL 03, 2025

local grey = require("frontier.theme.colors.grey")

local M = {}

M.CHANGES = {
	ColorColumn = { bg = grey.AlmostBlack },
	LineNr = { fg = grey.Quiet, bg = grey.Black },
	Normal = { fg = grey.Normal, bg = grey.AlmostBlack },
	NormalFloat = { bg = grey.Quieter },
}

M.LINKS = {
	Terminal = { link = "Normal" },
}

return M
