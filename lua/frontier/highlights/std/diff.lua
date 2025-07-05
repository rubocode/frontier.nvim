-- vim editor highlight colors
--

local blue = require("frontier.theme.colors.blue")
local green = require("frontier.theme.colors.green")
local grey = require("frontier.theme.colors.grey")
local red = require("frontier.theme.colors.red")

local M = {}

M.CHANGES = {
	DiffAdd = { fg = grey.AlmostBlack, bg = blue.Normal },
	DiffChange = { fg = grey.AlmostBlack, bg = green.Normal },
	DiffDelete = { fg = grey.Quiet, bg = red.Darker },
	DiffText = { fg = grey.Loud, bg = red.Darker },
}

M.LINKS = {}

return M
