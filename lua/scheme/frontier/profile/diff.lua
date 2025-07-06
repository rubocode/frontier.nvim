-- DIFF COLOR ABSTRACTION
-- JUL 06, 2025

local green = require("colors.rubo.green")
local grey = require("colors.rubo.grey")
local red = require("colors.rubo.red")
local yellow = require("colors.rubo.yellow")

local M = {
	Add = { fg = green.Normal },
	Change = { fg = yellow.Normal },
	Delete = { fg = red.Normal },
	Text = { fg = grey.Lighter },
}

return M
