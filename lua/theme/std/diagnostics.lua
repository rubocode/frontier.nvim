-- GENERIC STATUS COLORS
-- JUL 08, 2025

local blue = require("colors.blue")
local cyan = require("colors.cyan")
local green = require("colors.green")
local grey = require("colors.grey")
local red = require("colors.red")
local yellow = require("colors.yellow")

local M = {
	Text = {
		Error = { fg = red.Normal },
		Hint = { fg = blue.Normal },
		Info = { fg = cyan.Normal },
		Ok = { fg = green.Normal },
		Warn = { fg = yellow.Normal },
	},
	Line = {
		Error = { fg = grey.Normal, bg = red.Darker },
		Hint = { fg = grey.Quieter, bg = blue.Normal },
		Info = { fg = grey.Quieter, bg = cyan.Normal },
		Ok = { fg = grey.Lighter, bg = green.Normal },
		Warn = { fg = grey.Quieter, bg = yellow.Normal },
	},
}

return M
