-- GITSIGNS HIGHLIGHTS
-- JUL 05, 2025

local green = require("frontier.theme.colors.green")
local red = require("frontier.theme.colors.red")
local yellow = require("frontier.theme.colors.yellow")

local M = {}

M.CHANGES = {
	GitSignsAdd = { fg = green.Normal },
	GitSignsChange = { fg = yellow.Normal },
	GitSignsDelete = { fg = red.Normal },
}

M.LINKS = {}

return M
