-- DIAGNOSTICS
-- JUL 13, 2025

local yellow = require("palette.shared.yellow")
local cyan = require("palette.shared.cyan")
local blue = require("palette.shared.blue")
local green = require("palette.shared.green")
local red = require("palette.shared.red")
local grey = require("palette.shared.grey")

local M = {
	Error = { fg = grey.Lighter, bg = red.Darker },
	Hint = { fg = grey.Loud, bg = blue.Normal },
	Info = { fg = grey.Darkest, bg = cyan.Normal },
	Ok = { fg = grey.Lighter, bg = green.Normal },
	Warn = { fg = grey.Darkest, bg = yellow.Normal },
}

return M
