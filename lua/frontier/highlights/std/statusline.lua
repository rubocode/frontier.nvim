-- vim editor highlight colors
--

local brighter = require("frontier.theme.colors.brighter")
local grey = require("frontier.theme.colors.grey")
local normal = require("frontier.theme.colors.normal")

local style = require("frontier.highlights.style")

local M = {}

M.CHANGES = {
	StatusLine = { fg = grey.AlmostBlack, bg = grey.Lighter },
	StatusLineNC = { fg = grey.Lighter, bg = grey.AlmostBlack },
	StatusLineTerm = { fg = grey.Loud, bg = grey.AlmostBlack },
	StatusLineTermNC = { fg = grey.Lighter, bg = grey.Darker },
}

M.LINKS = {}

return M
