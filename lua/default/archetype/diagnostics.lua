-- DEFAULT DIAGNOSTICS ARCHETYPE
-- JUL 22, 2025

local yellow = require("palette.default.yellow")
local cyan = require("palette.default.cyan")
local blue = require("palette.default.blue")
local green = require("palette.default.green")
local red = require("palette.default.red")
local grey = require("palette.default.grey")

local M = {
	Text = {
		Error = { fg = red.Normal },
		Hint = { fg = blue.Normal },
		Info = { fg = cyan.Normal },
		Ok = { fg = green.Normal },
		Warn = { fg = yellow.Normal },
	},
	Line = {
		Error = { fg = grey.Lighter, bg = red.Darker },
		Hint = { fg = grey.Loud, bg = blue.Normal },
		Info = { fg = grey.Darkest, bg = cyan.Normal },
		Ok = { fg = grey.Loud, bg = green.Normal },
		Warn = { fg = grey.Darkest, bg = yellow.Normal },
	},
}

return M
