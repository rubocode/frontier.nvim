-- NOTICE
-- JUL 13, 2025

local yellow = require("palette.shared.yellow")
local cyan = require("palette.shared.cyan")
local blue = require("palette.shared.blue")
local green = require("palette.shared.green")
local red = require("palette.shared.red")
local grey = require("palette.shared.grey")

local M = {
	Text = {
		Error = { fg = red.Normal },
		Hint = { fg = cyan.Normal },
		Info = { fg = cyan.Normal },
		Ok = { fg = green.Normal },
		Warn = { fg = yellow.Normal },
	},
	Line = {
		Error = { fg = grey.Lighter, bg = red.Darker },
		Hint = { fg = grey.Lighter, bg = blue.Normal },
		Info = { fg = grey.Darkest, bg = cyan.Normal },
		Ok = { fg = grey.Lighter, bg = green.Normal },
		Warn = { fg = grey.Darkest, bg = yellow.Normal },
	},
}

return M
