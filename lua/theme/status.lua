-- GENERIC STATUS COLORS
-- JUL 08, 2025

local yellow = require("colors.yellow")
local red = require("colors.red")
local cyan = require("colors.cyan")
local green = require("colors.green")
local purple = require("colors.purple")
local grey = require("colors.grey")

local M = {
	Text = {
		Error = { fg = red.Normal },
	},
	Line = {
		Error = { fg = grey.Lighter, bg = red.Darker },
	},
}

return M
