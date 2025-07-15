-- FRONTIER DIAGNOSTICS TEXT
-- JUL 13, 2025

local yellow = require("palette.shared.yellow")
local cyan = require("palette.shared.cyan")
local blue = require("palette.shared.blue")
local green = require("palette.shared.green")
local red = require("palette.shared.red")

local M = {
	Error = { fg = red.Normal },
	Hint = { fg = blue.Normal },
	Info = { fg = cyan.Normal },
	Ok = { fg = green.Normal },
	Warn = { fg = yellow.Normal },
}

return M
