-- DIFF THEME COLORS
-- JUL 08, 2025

local green = require("frontier.palette.green")
local grey = require("frontier.palette.grey")
local red = require("frontier.palette.red")
local yellow = require("frontier.palette.yellow")

local M = {
	Add = { fg = green.Normal },
	Change = { fg = yellow.Normal },
	Delete = { fg = red.Normal },
	Text = { fg = grey.Lighter },
}

return M
