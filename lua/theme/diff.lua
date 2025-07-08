-- DIFF THEME ABSTRACTION
-- JUL 08, 2025

local green = require("colors.green")
local grey = require("colors.grey")
local red = require("colors.red")
local yellow = require("colors.yellow")

local M = {
	Add = { fg = green.Normal },
	Change = { fg = yellow.Normal },
	Delete = { fg = red.Normal },
	Text = { fg = grey.Lighter },
}

return M
