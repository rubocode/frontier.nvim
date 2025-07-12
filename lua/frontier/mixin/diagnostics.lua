-- DIAGNOSTICS THEME COLORS
-- JUL 08, 2025

local blue = require("frontier.palette.blue")
local cyan = require("frontier.palette.cyan")
local green = require("frontier.palette.green")
local grey = require("frontier.palette.grey")
local red = require("frontier.palette.red")
local yellow = require("frontier.palette.yellow")

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
		Hint = { fg = grey.Darkest, bg = blue.Normal },
		Info = { fg = grey.Darkest, bg = cyan.Normal },
		Ok = { fg = grey.Light, bg = green.Normal },
		Warn = { fg = grey.Darkest, bg = yellow.Normal },
	},
}

return M
