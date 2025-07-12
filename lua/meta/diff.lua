-- DIFF
-- JUL 08, 2025

local green = require("palette.shared.green")
local grey = require("palette.shared.grey")
local red = require("palette.shared.red")
local yellow = require("palette.shared.yellow")

local M = {
	Add = { fg = green.Normal },
	Change = { fg = yellow.Normal },
	Delete = { fg = red.Normal },
	Text = { fg = grey.Lighter },
}

return M
