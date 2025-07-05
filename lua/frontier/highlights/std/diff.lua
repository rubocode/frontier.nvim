-- vim editor highlight colors
--

local blue = require("frontier.theme.colors.blue")
local green = require("frontier.theme.colors.green")
local grey = require("frontier.theme.colors.grey")
local yellow = require("frontier.theme.colors.yellow")
local red = require("frontier.theme.colors.red")

local M = {}

M.CHANGES = {
	DiffAdd = { fg = grey.AlmostBlack, bg = blue.Normal },
	DiffChange = { fg = grey.AlmostBlack, bg = green.Normal },
	DiffDelete = { fg = grey.AlmostBlack, bg = red.Normal },
	DiffText = { fg = grey.Loud, bg = red.Normal },
}

M.LINKS = {}

return M
