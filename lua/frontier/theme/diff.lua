-- DIFF COLOR ABSTRACTION
-- JUL 06, 2025

local green = require("frontier.colors.green")
local grey = require("frontier.colors.grey")
local red = require("frontier.colors.red")
local yellow = require("frontier.colors.yellow")

local M = {
	Add = { fg = green.Normal },
	Change = { fg = yellow.Normal },
	Delete = { fg = red.Normal },
	Text = { fg = grey.Lighter },
}

return M
