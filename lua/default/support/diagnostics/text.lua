-- DEFAULT DIAGNOSTICS TEXT
-- JUL 13, 2025

local yellow = require("palette.default.yellow")
local cyan = require("palette.default.cyan")
local blue = require("palette.default.blue")
local green = require("palette.default.green")
local red = require("palette.default.red")

local M = {
	Error = { fg = red.Normal },
	Hint = { fg = blue.Normal },
	Info = { fg = cyan.Normal },
	Ok = { fg = green.Normal },
	Warn = { fg = yellow.Normal },
}

return M
