-- DIAGNOSTICS THEME COLORS
-- JUL 08, 2025

local blue = require("scheme.frontier.colors.blue")
local cyan = require("scheme.frontier.colors.cyan")
local green = require("scheme.frontier.colors.green")
local grey = require("scheme.frontier.colors.grey")
local red = require("scheme.frontier.colors.red")
local yellow = require("scheme.frontier.colors.yellow")

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
